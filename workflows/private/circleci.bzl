"""Rules for generated Aspect Workflows CircleCI configurations."""

load("@aspect_bazel_lib//lib:write_source_files.bzl", "write_source_file")

def circleci_aspect_workflows_config(
        name,
        circleci_org,
        aspect_workflows_config_file = "//.aspect/workflows:config.yaml",
        stamp = False,
        diff_test = True):
    """Generates a CircleCI config from an Aspect Workflows config file.

    Args:
        name: A unique name for the targets.

            If stamp is True, a <name>.yml file will be generated.

        circleci_org: Name of the CircleCI org to generate the config file for.

            This name is load bearing for self-hosted Workflows runners that
            generated CI jobs target.

        aspect_workflows_config_file: Name of the Aspect Workflows config file to use.

        stamp: Whether to write the generated CircleCI config file to the source tree.

        diff_test: If stamp is True, whether or not to test that the file stamped file is
            up-to-date with the generated file.
    """
    make_alias = stamp and not diff_test
    generated_target = ":_{}.yml".format(name)
    update_target = "update_{}".format(name)
    update_string = "\\n# Update with: bazel run //{}:{}".format(native.package_name(), update_target) if stamp else ""
    native.genrule(
        name = name if not make_alias else "generate_{}".format(name),
        srcs = [aspect_workflows_config_file],
        outs = [generated_target],
        cmd = "echo -e '# GENERATED FILE - DO NOT EDIT!{0}' > $@ && CI=1 CIRCLE_PROJECT_USERNAME={1} $(execpath @aspect_rules_workflows//workflows:rosetta) steps --configuration $(execpath {2}) --host circleci >> $@".format(update_string, circleci_org, aspect_workflows_config_file),
        tools = ["@aspect_rules_workflows//workflows:rosetta"],
    )

    if stamp:
        write_source_file(
            name = update_target,
            in_file = generated_target,
            out_file = ":{}.yml".format(name),
            diff_test = diff_test,
        )
        if make_alias:
            native.alias(
                name = name,
                actual = update_target,
            )

def circleci_merged_config(
        name,
        circleci_config_files):
    """Merges multiple CircleCI config files into one.

    Use this rule to merge generated Aspect Workflows config file(s) with your
    non-Workflows config files.

    Args:
        name: A unique name for this target
        circleci_config_files: List of CircleCI config files to merge.
    """
    config_execpaths = []
    if len(circleci_config_files) < 2:
        fail("At least 2 CirleCI config files are required for merging")
    for config in circleci_config_files:
        config_execpaths.append("$(execpath {})".format(config))

    generated_target = ":_{}.yml".format(name)
    update_string = "\\n# Update with: bazel run //{}:{}".format(native.package_name(), name)
    native.genrule(
        name = "{}_merge".format(name),
        srcs = circleci_config_files,
        outs = [generated_target],
        cmd = "echo -e '# GENERATED FILE - DO NOT EDIT!{0}' > $@ && $(execpath @aspect_rules_workflows//workflows:circleci-config-merge) merge {1} >> $@".format(update_string, " ".join(config_execpaths)),
        tools = ["@aspect_rules_workflows//workflows:circleci-config-merge"],
    )

    write_source_file(
        name = name,
        in_file = generated_target,
        out_file = ":{}.yml".format(name),
    )

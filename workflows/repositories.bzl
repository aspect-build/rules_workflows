"Runtime starlark dependencies"

load("//workflows/private:maybe.bzl", http_archive = "maybe_http_archive", http_file = "maybe_http_file")
load("//workflows/private:versions.bzl", "CIRCLECI_CONFIG_MERGE_VERSIONS", "ROSETTA_VERSIONS")

LATEST_WORKFLOWS_VERSION = ROSETTA_VERSIONS.keys()[0]

# buildifier: disable=function-docstring
def workflows_tools(workflows_version):
    if workflows_version not in ROSETTA_VERSIONS.keys():
        fail("Aspect Workflows version {} not supported".format(workflows_version))

    rosetta_version = workflows_version
    rosetta_integrity = ROSETTA_VERSIONS[rosetta_version]
    for platform_arch in rosetta_integrity.keys():
        http_file(
            name = "rosetta_{}".format(platform_arch),
            downloaded_file_path = "rosetta",
            executable = True,
            integrity = rosetta_integrity[platform_arch],
            urls = ["https://static.aspect.build/aspect/{0}/rosetta_real_{1}".format(rosetta_version, platform_arch.replace("aarch64", "arm64"))],
        )

    circleci_config_merge_version = CIRCLECI_CONFIG_MERGE_VERSIONS.keys()[0]
    circleci_config_merge_integrity = CIRCLECI_CONFIG_MERGE_VERSIONS[circleci_config_merge_version]
    for platform_arch in circleci_config_merge_integrity.keys():
        platform = platform_arch.replace("aarch64", "arm64").replace("x86_64", "amd64")
        ext = "zip" if platform_arch.startswith("windows_") else "tar.gz"
        http_archive(
            name = "circleci_config_merge_{}".format(platform_arch),
            build_file_content = "exports_files([\"circleci-config-merge\"])",
            integrity = circleci_config_merge_integrity[platform_arch],
            urls = ["https://github.com/suzuki-shunsuke/circleci-config-merge/releases/download/v{0}/circleci-config-merge_{0}_{1}.{2}".format(circleci_config_merge_version, platform, ext)],
        )

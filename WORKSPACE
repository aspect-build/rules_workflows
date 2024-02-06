workspace(name = "aspect_rules_workflows")

# buildifier: disable=bzl-visibility
load("@aspect_rules_workflows//workflows/private:internal_deps.bzl", "rules_workflows_internal_deps")

rules_workflows_internal_deps()

load("@aspect_rules_workflows//workflows:dependencies.bzl", "rules_workflows_dependencies")

rules_workflows_dependencies()

load("@aspect_rules_workflows//workflows:repositories.bzl", "LATEST_WORKFLOWS_VERSION", "fetch_workflows_tools")

fetch_workflows_tools(workflows_version = LATEST_WORKFLOWS_VERSION)

load("@aspect_bazel_lib//lib:repositories.bzl", "aspect_bazel_lib_dependencies")

aspect_bazel_lib_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load(
    "@aspect_rules_lint//format:repositories.bzl",
    "fetch_shfmt",
)

fetch_shfmt()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.21.6")

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@buildifier_prebuilt//:deps.bzl", "buildifier_prebuilt_deps")

buildifier_prebuilt_deps()

load("@buildifier_prebuilt//:defs.bzl", "buildifier_prebuilt_register_toolchains")

buildifier_prebuilt_register_toolchains()

load("@io_bazel_stardoc//:setup.bzl", "stardoc_repositories")

stardoc_repositories()

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")

rules_jvm_external_setup()

load("@io_bazel_stardoc//:deps.bzl", "stardoc_external_deps")

stardoc_external_deps()

load("@stardoc_maven//:defs.bzl", stardoc_pinned_maven_install = "pinned_maven_install")

stardoc_pinned_maven_install()

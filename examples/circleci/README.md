# Generating Aspect Workflows CircleCI configurations

The examples under this folder show how to generate CircleCI configurations from an Aspect
Workflows `.aspect/workflows/config.yaml` config file.

For a stand-alone CircleCI configuration with only Aspect Workflows see the
`examples/circleci/standalone_config` example.

For merging non-Workflows CircleCI configurations with the generated Aspect Workflows CircleCI
configuration see the `examples/circleci/merged_unstamped_config` and `examples/circleci/merged_stamped_config`
examples.

For live examples of these rules in use see the
[aspect-cli](https://github.com/aspect-build/aspect-cli/blob/main/.circleci/BUILD.bazel) and
[bazel-lib](https://github.com/aspect-build/bazel-lib/blob/main/.circleci/BUILD.bazel) Aspect
Workflows reference deployments.

## Reserved CircleCI workflow and job names

Aspect Workflows CircleCI workflow names are prefixed with "aspect-workflows-". These currently
include:

-   `aspect-workflows`
-   `aspect-workflows-warming`
-   `aspect-workflows-manual-deliver`

Aspect Workflows CircleCI job names are prefixed with "aw-". These currently include.

-   `aw-auto-deliver`
-   `aw-buildifier`
-   `aw-configure`
-   `aw-format`
-   `aw-gazelle`
-   `aw-manual-deliver`
-   `aw-test`
-   `aw-warming`

In your user CircleCI configuration, avoid workflow names prefixed with `aspect-workflows-` and job
names prefixed with `aw-`. Conflicting workflow or job names will result in a bad configuration
merge.

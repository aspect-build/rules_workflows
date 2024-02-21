# Merged stamped CircleCI config example

Example of a merging the Aspect Workflows generated CircleCI with other non-Workflows CircleCI
configs.

In this example, the Aspect Workflows CircleCI config is generated with the
`workflows_circleci_config` rule and then merged with non-Workflows CircleCI config,
`user-config-a.yml` and `user-config-b.yml`, with the `workflows_circleci_merged_config` rule.

Set `diff_test` to `False` to disable the diff test that keeps the stamped
`aspect-workflows-config.yml` file up-to-date with the generated file. Disabling the diff test
allows for custom modifications to the generated config. On changes to
`.aspect/workflows/config.yaml` or when upgrading to a newer version of Aspect Workflows, be sure to
`bazel run` the `workflows_circleci_config` target to update the stamped file and re-apply
your custom changes.

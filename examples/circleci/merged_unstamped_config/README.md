# Merged unstamped CircleCI config example

Example of a merging the Aspect Workflows generated CircleCI with other non-Workflows CircleCI
configs.

In this example, the Aspect Workflows CircleCI config is generated with the
`workflows_circleci_config` rule and then merged with non-Workflows CircleCI configs,
`user-config-a.yml` and `user-config-b.yml`, with the `workflows_circleci_merged_config` rule.

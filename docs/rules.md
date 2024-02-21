<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Public API re-exports

<a id="workflows_circleci_config"></a>

## workflows_circleci_config

<pre>
workflows_circleci_config(<a href="#workflows_circleci_config-name">name</a>, <a href="#workflows_circleci_config-circleci_org">circleci_org</a>, <a href="#workflows_circleci_config-aspect_workflows_config_file">aspect_workflows_config_file</a>, <a href="#workflows_circleci_config-stamp">stamp</a>, <a href="#workflows_circleci_config-diff_test">diff_test</a>)
</pre>

Generates a CircleCI config from an Aspect Workflows config file.

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="workflows_circleci_config-name"></a>name |  A unique name for the targets.<br><br>If stamp is True, a <name>.yml file will be generated.   |  none |
| <a id="workflows_circleci_config-circleci_org"></a>circleci_org |  Name of the CircleCI org to generate the config file for.<br><br>This name is load bearing for self-hosted Workflows runners that generated CI jobs target.   |  none |
| <a id="workflows_circleci_config-aspect_workflows_config_file"></a>aspect_workflows_config_file |  Name of the Aspect Workflows config file to use.   |  `"//.aspect/workflows:config.yaml"` |
| <a id="workflows_circleci_config-stamp"></a>stamp |  Whether to write the generated CircleCI config file to the source tree.   |  `False` |
| <a id="workflows_circleci_config-diff_test"></a>diff_test |  If stamp is True, whether or not to test that the file stamped file is up-to-date with the generated file.   |  `True` |


<a id="workflows_circleci_merged_config"></a>

## workflows_circleci_merged_config

<pre>
workflows_circleci_merged_config(<a href="#workflows_circleci_merged_config-name">name</a>, <a href="#workflows_circleci_merged_config-circleci_config_files">circleci_config_files</a>)
</pre>

Merges multiple CircleCI config files into one.

Use this rule to merge generated Aspect Workflows config file(s) with your
non-Workflows config files.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="workflows_circleci_merged_config-name"></a>name |  A unique name for this target   |  none |
| <a id="workflows_circleci_merged_config-circleci_config_files"></a>circleci_config_files |  List of CircleCI config files to merge.   |  none |



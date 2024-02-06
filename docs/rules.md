<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Public API re-exports

<a id="circleci_aspect_workflows_config"></a>

## circleci_aspect_workflows_config

<pre>
circleci_aspect_workflows_config(<a href="#circleci_aspect_workflows_config-name">name</a>, <a href="#circleci_aspect_workflows_config-circleci_org">circleci_org</a>, <a href="#circleci_aspect_workflows_config-aspect_workflows_config_file">aspect_workflows_config_file</a>, <a href="#circleci_aspect_workflows_config-stamp">stamp</a>, <a href="#circleci_aspect_workflows_config-diff_test">diff_test</a>)
</pre>

Generates a CircleCI config from an Aspect Workflows config file.

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="circleci_aspect_workflows_config-name"></a>name |  A unique name for the targets.<br><br>If stamp is True, a <name>.yml file will be generated.   |  none |
| <a id="circleci_aspect_workflows_config-circleci_org"></a>circleci_org |  Name of the CircleCI org to generate the config file for.<br><br>This name is load bearing for self-hosted Workflows runners that generated CI jobs target.   |  none |
| <a id="circleci_aspect_workflows_config-aspect_workflows_config_file"></a>aspect_workflows_config_file |  Name of the Aspect Workflows config file to use.   |  `"//.aspect/workflows:config.yaml"` |
| <a id="circleci_aspect_workflows_config-stamp"></a>stamp |  Whether to write the generated CircleCI config file to the source tree.   |  `False` |
| <a id="circleci_aspect_workflows_config-diff_test"></a>diff_test |  If stamp is True, whether or not to test that the file stamped file is up-to-date with the generated file.   |  `True` |


<a id="circleci_merged_config"></a>

## circleci_merged_config

<pre>
circleci_merged_config(<a href="#circleci_merged_config-name">name</a>, <a href="#circleci_merged_config-circleci_config_files">circleci_config_files</a>)
</pre>

Merges multiple CircleCI config files into one.

Use this rule to merge generated Aspect Workflows config file(s) with your
non-Workflows config files.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="circleci_merged_config-name"></a>name |  A unique name for this target   |  none |
| <a id="circleci_merged_config-circleci_config_files"></a>circleci_config_files |  List of CircleCI config files to merge.   |  none |



"Runtime starlark dependencies"

load("//workflows/private:maybe.bzl", http_archive = "maybe_http_archive")

# buildifier: disable=function-docstring
def rules_workflows_dependencies():
    http_archive(
        name = "aspect_bazel_lib",
        sha256 = "04feedcd06f71d0497a81fdd3220140a373ff9d2bff94620fbd50b774f96d8e0",
        strip_prefix = "bazel-lib-1.40.2",
        url = "https://github.com/aspect-build/bazel-lib/releases/download/v1.40.2/bazel-lib-v1.40.2.tar.gz",
    )

    http_archive(
        name = "bazel_skylib",
        sha256 = "cd55a062e763b9349921f0f5db8c3933288dc8ba4f76dd9416aac68acee3cb94",
        urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.5.0/bazel-skylib-1.5.0.tar.gz"],
    )

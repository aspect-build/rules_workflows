"maybe utilities"

load("@bazel_tools//tools/build_defs/repo:http.bzl", _http_archive = "http_archive", _http_file = "http_file")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def maybe_http_archive(**kwargs):
    maybe(_http_archive, **kwargs)

def maybe_http_file(**kwargs):
    maybe(_http_file, **kwargs)

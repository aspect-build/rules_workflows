"""Unit tests for starlark helpers
See https://bazel.build/rules/testing#testing-starlark-utilities
"""

load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//workflows:repositories.bzl", "LATEST_WORKFLOWS_VERSION")
load("//workflows/private:versions.bzl", "ROSETTA_VERSIONS")

def _smoke_test_impl(ctx):
    env = unittest.begin(ctx)
    asserts.equals(env, "5.11.11", ROSETTA_VERSIONS.keys()[0])
    asserts.equals(env, "5.11.11", LATEST_WORKFLOWS_VERSION)
    return unittest.end(env)

# The unittest library requires that we export the test cases as named test rules,
# but their names are arbitrary and don't appear anywhere.
_t0_test = unittest.make(_smoke_test_impl)

def versions_test_suite(name):
    unittest.suite(name, _t0_test)

"""A module for defining WORKSPACE dependencies required for rules_openblas"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_openblas_dependencies():
    maybe(
        http_archive,
        name = "rules_foreign_cc",
        sha256 = "2a4d07cd64b0719b39a7c12218a3e507672b82a97b98c6a89d38565894cf7c51",
        strip_prefix = "rules_foreign_cc-0.9.0",
        url = "https://github.com/bazelbuild/rules_foreign_cc/archive/refs/tags/0.9.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "com_github_xianyi_openblas",
        build_file = "@openblas//openblas:BUILD",
        sha256 = "f36ba3d7a60e7c8bcc54cd9aaa9b1223dd42eaf02c811791c37e8ca707c241ca",
        strip_prefix = "OpenBLAS-0.3.21",
        url = "https://github.com/xianyi/OpenBLAS/archive/refs/tags/v0.3.21.tar.gz",
    )

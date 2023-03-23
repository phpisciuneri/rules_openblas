load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

cmake(
    name = "openblas",
    lib_source = "@com_github_xianyi_openblas//:all-src",
    out_data_dirs = ["share"],
    out_static_libs = select({
        "@bazel_tools//src/conditions:linux": ["libopenblas.a"],
        "@bazel_tools//src/conditions:windows": ["openblas.lib"],
    }),
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "cblas_daxpy",
    srcs = ["cblas_daxpy.cpp"],
    linkopts = select({
        "@bazel_tools//src/conditions:darwin": [],
        "@bazel_tools//src/conditions:linux": ["-lpthread"],
        "@bazel_tools//src/conditions:windows": [],
    }),
    deps = ["@openblas"],
)

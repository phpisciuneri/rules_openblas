cc_binary(
    name = "cblas_daxpy",
    srcs = ["cblas_daxpy.cpp"],
    linkopts = select({
        "@bazel_tools//src/conditions:linux": ["-lpthread"],
    }),
    deps = ["@openblas"],
)

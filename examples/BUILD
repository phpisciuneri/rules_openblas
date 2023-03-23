cc_binary(
    name = "cblas_daxpy",
    linkopts = select({
        "@bazel_tools//src/conditions:linux": ["-lpthread"]
    }),
    srcs = ["cblas_daxpy.cpp"],
    deps = ["@openblas"],
)

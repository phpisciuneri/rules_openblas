# rules-openblas

Bazel build rules for OpenBLAS.

Copy this into your Bazel `WORKSPACE` file:

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "openblas",
    sha256 = "cba377eeb528aedf12ef1e3b46b35c40f7b7d384568fea0a19d18f3378b1ccb9",
    strip_prefix = "rules-openblas-0.1.0",
    url = "https://github.com/phpisciuneri/rules-openblas/archive/refs/tags/v0.1.0.tar.gz",
)

load("@openblas//openblas:deps.bzl", "rules_openblas_dependencies")

rules_openblas_dependencies()

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()
```

# rules_openblas

Bazel build rules for [OpenBLAS](https://www.openblas.net/).

## About

Uses [rules_foreign_cc](https://github.com/bazelbuild/rules_foreign_cc) to do a CMake configuration (default options), build, and install of OpenBLAS from source.  This allows the user to include `@openblas` in the `deps` argument in project `BUILD` files.  See the `examples` folder for a simple example.

**For usage see the instructions with the [latest release](https://github.com/phpisciuneri/rules_openblas/releases/latest).**

## Tested

- Windows 10
- Ubuntu 20.04.5 LTS
- MacOS 12.6.3

## Troubleshooting

If the CMake configuration or build fails I recommend to check the `CMake.log` under `$(GENDIR)/openblas_foreign_cc` for any errors. Use `bazel info --show_make_env` if you are unsure of `GENDIR`.

If you suspect that the errors can be resolved with cmake configuration options:
- Clone this repository.
- Adjust the `cmake` rule in `BUILD` with custom settings for your system.
- Replace the `http_archive` function with a `local_repository` function pointing to the cloned repo in `WORKSPACE`.

## Future

- I'd like to expose options for the user to have more control over the cmake rule. For now, you are limited to default options.
- Expand portability to a broader range of systems and environments

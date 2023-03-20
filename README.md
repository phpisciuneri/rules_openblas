# rules-openblas

Bazel build rules for OpenBLAS.

## About

Uses `rules_foreign_cc` to do a CMake configuration (default options), build, and install of OpenBLAS from source.  The user can then include `@openblas` in the `deps` argument in project BUILD files.  See the `examples` folder for a simple example.

For usage see the instructions with the [latest release](https://github.com/phpisciuneri/rules-openblas/releases/latest).

## Future

I'd like to expose options for the user to have more control over the cmake rule.  For now, you are limited to default options.  Furthermore, if the CMake configuration encounters any errors you are out of luck.

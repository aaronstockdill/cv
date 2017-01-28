# `cv`
`cv` is designed to make generating a curriculum vitæ or resumé as painless as possible. Compile a single source file to LaTeX, HTML, rich text, or plain text using `cv`, customising the output using document templates.

## Build `cv`
`cv` has no dependencies outside the standard `noweb` compilers `notangle` and `noweave`, `GCC`, and `LaTeX`. To use certain templates, or convert the output from `cv` to something more useful, other tools may be required.

To actually build the project, a Makefile is provided. Just running `make` should be sufficient most of the time.

## Features
+ Simple language design to make writing the format simple
+ Macros to let you write *your* CV *your* way
+ Built-in templates to produce a variety of a output right from the default install
+ Ability to add more templates quickly and easily

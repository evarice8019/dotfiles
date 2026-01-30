#!/bin/bash

# List of tools to install
crates=(
    "bottom"
    "du-dust"
    "git-delta"
    "tokei"
    "tree-sitter-cli"
)

for crate in "${crates[@]}"; do
    cargo install "$crate"
done


#!/bin/bash

# List of tools to install
crates=(
    #"bat"
    "bottom"
    "du-dust"
    #"eza"
    #"fd-find"
    "git-delta"
    #"ripgrep"
    #"hyperfine"
    "tokei"
    "tree-sitter-cli"
)

for crate in "${crates[@]}"; do
    cargo install "$crate"
done

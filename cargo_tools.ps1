# List of tools to install
$crates = @(
    "bottom"
    "du-dust"
    "git-delta"
    "tokei"
    "tree-sitter-cli"
)

foreach ($crate in $crates) {
    cargo install $crate
}

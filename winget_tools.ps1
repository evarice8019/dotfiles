# List of tools to install (winget package IDs)
$packages = @(
    "sharkdp.bat"
    "eza-community.eza"
    "sharkdp.fd"
    "dandavison.delta"
    "BurntSushi.ripgrep.MSVC"
    "sharkdp.hyperfine"
)

foreach ($package in $packages) {
    winget install --id $package --accept-source-agreements --accept-package-agreements
}

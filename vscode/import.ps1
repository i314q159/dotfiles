foreach ($extension in Get-Content extensions.txt) {
    code --install-extension $extension
}
cp settings.json ~/scoop/apps/vscode/current/data/user-data/User/settings.json
foreach ($extension in Get-Content extensions.txt) {
    code --install-extension $extension --force 
}

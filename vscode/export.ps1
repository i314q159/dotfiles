code --list-extensions | % {"code --install-extension $_ --force"} > import.ps1
code --list-extensions | % {"code --uninstall-extension $_ --force"} > clean.ps1

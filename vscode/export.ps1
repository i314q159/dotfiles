code --list-extensions | % {"code --install-extension $_ --force"} | Out-File -Encoding utf8 import.ps1
code --list-extensions | % {"code --uninstall-extension $_ --force"} | Out-File -Encoding utf8 clean.ps1

# code --list-extensions | xargs -n 1 code --uninstall-extension;
cat vscode_extensions_list.txt | xargs -n 1 code --install-extension;
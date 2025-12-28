MSYS2 Shell Integration Helpers

This folder contains helper scripts and snippets to integrate MSYS2 with common Windows shells and terminals.

Files:
- `powershell_profile.ps1` - contents suitable for `Documents\\PowerShell\\Microsoft.PowerShell_profile.ps1`.
- `msys2-ucrt64.cmd`, `msys2-mingw64.cmd`, `msys2-msys.cmd` - simple CMD wrappers that launch the corresponding MSYS2 shell.
- `windows-terminal-profile.json` - JSON profile snippets to add to Windows Terminal `profiles.list` or `settings.json`.
- `vscode-terminal-snippet.json` - snippet to add to `settings.json` for VS Code terminal profiles.

Quick install (recommended):

1. PowerShell: copy the contents of `powershell_profile.ps1` into `\\Users\\<you>\\Documents\\PowerShell\\Microsoft.PowerShell_profile.ps1` and restart PowerShell.
2. CMD: copy the `.cmd` files to a folder on your PATH (or to Desktop) and run them.
3. Windows Terminal: open Settings -> Open JSON file and add the profiles from `windows-terminal-profile.json` under `profiles.list` or `profiles.defaults` as appropriate.
4. VS Code: paste `vscode-terminal-snippet.json` into `terminal.integrated.profiles.windows` in your `settings.json` and restart VS Code.

If you want me to install the PowerShell profile into your account now, say "install ps"; to copy the `.cmd` launchers into `C:\\Users\\%USERNAME%\\bin` say "install cmd".

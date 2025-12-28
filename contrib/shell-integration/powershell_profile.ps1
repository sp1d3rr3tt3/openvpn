function Start-MSYS2-UCRT {
    $msys = 'C:\msys64\msys2_shell.cmd'
    if (-Not (Test-Path $msys)) { Write-Error "MSYS2 launcher not found at $msys"; return }
    Start-Process -FilePath $msys -ArgumentList "-ucrt64 -here" -WorkingDirectory (Get-Location)
}

function Start-MSYS2-Mingw64 {
    $msys = 'C:\msys64\msys2_shell.cmd'
    if (-Not (Test-Path $msys)) { Write-Error "MSYS2 launcher not found at $msys"; return }
    Start-Process -FilePath $msys -ArgumentList "-mingw64 -here" -WorkingDirectory (Get-Location)
}

function Start-MSYS2-MSYS {
    $msys = 'C:\msys64\msys2_shell.cmd'
    if (-Not (Test-Path $msys)) { Write-Error "MSYS2 launcher not found at $msys"; return }
    Start-Process -FilePath $msys -ArgumentList "-msys -here" -WorkingDirectory (Get-Location)
}

Set-Alias msys2ucrt Start-MSYS2-UCRT
Set-Alias msys2mingw Start-MSYS2-Mingw64
Set-Alias msys2 Start-MSYS2-MSYS

# Optional: add a convenience PATH to find binaries built by MSYS2 (adjust if you use different MSYSTEM)
# $env:Path = "C:\msys64\ucrt64\bin;C:\msys64\mingw64\bin;" + $env:Path

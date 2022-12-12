$Title = "SSH"
$host.UI.RawUI.WindowTitle = $Title
cd c:\windows\system32\openssh
clear
$ip= Read-Host "IP"
$port= Read-Host "Port"
$user= Read-Host "Username"
write-host "connecting..."
clear
.\ssh -p $port $user@$ip
$Title = "Easy SSH"
$host.UI.RawUI.WindowTitle = $Title
cd c:\windows\system32\openssh
clear
$ip= Read-Host "IP"
$port= Read-Host "Port"
$user= Read-Host "Username"
clear
.\ssh -p $port $user@$ip
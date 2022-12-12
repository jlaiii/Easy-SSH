$Title = "Easy SSH"
$host.UI.RawUI.WindowTitle = $Title
cd c:\windows\system32\openssh
for ($num = 1 ; $num -le 99 ; $num++){
clear
write-host " "
$ip= Read-Host "IP"
$port= Read-Host "Port"
$user= Read-Host "Username"
clear
write-host " "
.\ssh $user@$ip -p $port
write-host " "
pause}
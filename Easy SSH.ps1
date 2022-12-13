$Title = "Easy SSH"
$host.UI.RawUI.WindowTitle = $Title
cd c:\windows\system32\openssh
for ($num = 1 ; $num -le 99 ; $num++){
clear
write-host " "
$ip= Read-Host "IP"
clear
write-host " "
$Title = "Easy SSH: connecting to $ip"
$host.UI.RawUI.WindowTitle = $Title
$port= Read-Host "Port"
clear
$Title = "Easy SSH: connecting to $ip on port $port"
$host.UI.RawUI.WindowTitle = $Title
write-host " "
$user= Read-Host "Username"
clear
$Title = "Easy SSH: connecting to $ip on port $port with user $user"
$host.UI.RawUI.WindowTitle = $Title
write-host " "
.\ssh $user@$ip -p $port
write-host " "
$Title = "Easy SSH"
$host.UI.RawUI.WindowTitle = $Title
pause}
# This will install SSH.
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# This script will SSH into a server.

$username = Read-Host "Enter username"
$server = Read-Host "Enter server address"
$port = Read-Host "Enter port number"

Write-Host "Connecting to $server on port $port..."
ssh -l $username $server -p $port
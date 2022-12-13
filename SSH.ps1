# Check if OpenSSH is installed.
if (Get-WindowsCapability -Online | Where-Object {$_.Name -eq "OpenSSH.Client~~~~0.0.1.0"}) {
    # OpenSSH is installed.
} else {
    # OpenSSH is not installed. Install it.
    Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
    Write-Host "OpenSSH installed. Proceeding with script."
}

# This script will SSH into a server.

$username = Read-Host "Enter username"
$server = Read-Host "Enter server address"
$port = Read-Host "Enter port number"
clear
Write-Host "Connecting to $server on port $port..."
ssh -l $username $server -p $port

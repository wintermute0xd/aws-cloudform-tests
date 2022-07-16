# SSHKey from Amazon AWS Systems Manager > Parameter Store
$SSHKey = 'C:\Users\admin\MyKeyToVPNServer.pem'
# IP of AWS EC2 Server (can be found on ec2 page or in stack outputs)
$ServerIP = '3.65.60.122'
# Your wireguard client public key 
$ClientPubKey = '4Fz6QCFC7SGD22Hovq0hSbe6t2cSMGtCcpimKZ3pvDU='
# IP for your client in range from 10.10.10.11 to 10.10.10.254
$AllowedIPs = '10.10.10.11/32'

$Command = "sudo wg set wg0 peer $ClientPubKey allowed-ips $AllowedIPs"


ssh -i $SSHKey ubuntu@${ServerIP} $Command

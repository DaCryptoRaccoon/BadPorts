# Block Bad P2P ports as per the Bitcoin core documentation
# See : https://github.com/bitcoin/bitcoin/blob/master/doc/p2p-bad-ports.md
#!/bin/bash

# Enable UFW if not already enabled
ufw_status=$(ufw status | grep -i "Status: active")
if [ -z "$ufw_status" ]; then
    sudo ufw enable
fi

# Define the list of "bad" ports to block along with their names
declare -A bad_ports=(
    [1]="tcpmux"
    [7]="echo"
    [9]="discard"
    [11]="systat"
    [13]="daytime"
    [15]="netstat"
    [17]="qotd"
    [19]="chargen"
    [20]="ftp data"
    [21]="ftp access"
    [22]="ssh"
    [23]="telnet"
    [25]="smtp"
    [37]="time"
    [42]="name"
    [43]="nicname"
    [53]="domain"
    [69]="tftp"
    [77]="priv-rjs"
    [79]="finger"
    [87]="ttylink"
    [95]="supdup"
    [101]="hostname"
    [102]="iso-tsap"
    [103]="gppitnp"
    [104]="acr-nema"
    [109]="pop2"
    [110]="pop3"
    [111]="sunrpc"
    [113]="auth"
    [115]="sftp"
    [117]="uucp-path"
    [119]="nntp"
    [123]="NTP"
    [135]="loc-srv / epmap"
    [137]="netbios"
    [139]="netbios"
    [143]="imap2"
    [161]="snmp"
    [179]="BGP"
    [389]="ldap"
    [427]="SLP (Also used by Apple Filing Protocol)"
    [465]="smtp+ssl"
    [512]="print / exec"
    [513]="login"
    [514]="shell"
    [515]="printer"
    [526]="tempo"
    [530]="courier"
    [531]="chat"
    [532]="netnews"
    [540]="uucp"
    [548]="AFP (Apple Filing Protocol)"
    [554]="rtsp"
    [556]="remotefs"
    [563]="nntp+ssl"
    [587]="smtp (rfc6409)"
    [601]="syslog-conn (rfc3195)"
    [636]="ldap+ssl"
    [989]="ftps-data"
    [990]="ftps"
    [993]="ldap+ssl"
    [995]="pop3+ssl"
    [1719]="h323gatestat"
    [1720]="h323hostcall"
    [1723]="pptp"
    [2049]="nfs"
    [3659]="apple-sasl / PasswordServer"
    [4045]="lockd"
    [5060]="sip"
    [5061]="sips"
    [6000]="X11"
    [6566]="sane-port"
    [6665]="Alternate IRC"
    [6666]="Alternate IRC"
    [6667]="Standard IRC"
    [6668]="Alternate IRC"
    [6669]="Alternate IRC"
    [6697]="IRC + TLS"
    [10080]="Amanda"
)

# Block the "bad" ports and label them using UFW
for port in "${!bad_ports[@]}"; do
    sudo ufw deny "$port" comment "Blocked: ${bad_ports[$port]} (port $port)"
done

# Reload UFW rules
sudo ufw reload

# Display UFW status
sudo ufw status verbose

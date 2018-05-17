
# example wi-fi: mac-proxy-1 Wi-Fi `username`
# example ethernet: mac-proxy-1 Ethernet `username`

function mac-proxy-1
    networksetup -setsocksfirewallproxy $argv[1] 127.0.0.1 8123
    networksetup -setsocksfirewallproxystate $argv[1] on
    echo "SOCKS proxy enabled. Tunneling..."
    ssh -D 8123 -C -q -N $argv[2]@egrr.tk
end
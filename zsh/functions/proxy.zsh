# example wi-fi: mac-proxy-1 Wi-Fi `username`
# example ethernet: mac-proxy-1 Ethernet `username`

mac-proxy-1 () {
    TRAPEXIT() {
        mac-proxy-0
    }

    networksetup -setsocksfirewallproxy $argv[1] 127.0.0.1 8123
    networksetup -setsocksfirewallproxystate $argv[1] on
    echo "SOCKS proxy enabled. Tunneling..."
    ssh -D 8123 -C -q -N $argv[2]
}

mac-proxy-0 () {
    networksetup -setsocksfirewallproxystate Wi-Fi off > /dev/null
    networksetup -setsocksfirewallproxystate Ethernet off > /dev/null
    echo "SOCKS proxy disabled."
    pkill -f "ssh -D"
    echo "Tunneling stopped."
}
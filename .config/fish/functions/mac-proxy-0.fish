function mac-proxy-0
    networksetup -setsocksfirewallproxystate Wi-Fi off
    networksetup -setsocksfirewallproxystate Ethernet off
    echo "SOCKS proxy disabled."
    pkill -f "ssh -D"
    echo "Tunneling stopped."
end
trap mac-proxy-0 INT
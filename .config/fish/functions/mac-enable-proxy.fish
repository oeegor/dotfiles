
function mac-enable-proxy
    # networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 9999
    # networksetup -setsocksfirewallproxy Ethernet 127.0.0.1 9999
    networksetup -setsocksfirewallproxystate Wi-Fi on
    networksetup -setsocksfirewallproxystate Ethernet on
    echo "SOCKS proxy enabled."
    # echo "Tunneling..."
    # ssh -ND 9999 MYHOST.macminicolo.net
end
keys="laptop_dsa.pub lapbap_rsa.pub"

if which curl > /dev/null; then
        for key in $keys
        do
                curl "http://keys.gonzih.org/$key"  >> ~/.ssh/authorized_keys
        done
else
        if which wget > /dev/null; then
                for key in $keys
                do
                        wget "http://keys.gonzih.org/$key" -O - >> ~/.ssh/authorized_keys
                done
        else
                echo '#### curl or wget is required for installation ####'
        fi
fi

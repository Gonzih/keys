keys="laptop_dsa.pub laptop_rsa.pub"

if which curl > /dev/null; then
        for key in $keys
        do
                curl "http://keys.gonzih.me/$key"  >> ~/.ssh/authorized_keys
        done
else
        if which wget > /dev/null; then
                for key in $keys
                do
                        wget "http://keys.gonzih.me/$key" -O - >> ~/.ssh/authorized_keys
                done
        else
                echo '#### curl or wget is required for installation ####'
        fi
fi

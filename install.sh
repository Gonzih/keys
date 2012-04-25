keys="laptop desktop"

if which curl > /dev/null; then
        for key in $keys
        do
                curl "http://keys.gonzih.org/$key.asc"  >> ~/.ssh/authorized_keys
        done
else
        if which wget > /dev/null; then
                for key in $keys
                do
                        wget "http://keys.gonzih.org/$key.asc" -O - >> ~/.ssh/authorized_keys
                done
        else
                echo '#### curl or wget is required for installation ####'
        fi
fi

port=$1
while :; do
    echo "User: "$(id)
    bit start -p $port -n
done

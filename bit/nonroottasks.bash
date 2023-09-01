echo "ID: "$(id)
echo 'export PATH=$HOME/bin:$PATH' >>~/.bashrc && source ~/.bashrc
echo "Present Working Directory: "$(pwd)

bit config set analytics_reporting true

echo "Check if shared \"UI\" components code is present"
if [[ -d "./shared-ui-components" ]]; then
    echo "Shared \"UI\" components code is present starting Bit in Port 3000"
    cd shared-ui-components
    /bitstart.bash 3000 &
    cd ..
fi

echo "Check if shared \"Node.js\" components code is present"
if [[ -d "./shared-node-components" ]]; then
    echo "Shared \"Node.js\" components code is present starting Bit in Port 3001"
    cd shared-node-components
    /bitstart.bash 3001 &
    cd ..
fi

wait

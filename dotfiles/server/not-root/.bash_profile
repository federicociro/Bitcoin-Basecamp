# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

export PATH=$HOME/bin:/home/feder/.cargo/bin:$PATH

unset USERNAME

echo ""
echo "Login succesfull."
echo ""
echo "Initializing SSH Agent and adding local Github private key"
eval `ssh-agent -s`
ssh-add /home/$USER/.ssh/github.com
ssh-add /home/$USER/.ssh/ubuntuserver
ssh-add -l

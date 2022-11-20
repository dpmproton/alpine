function config_user(){
    if [ ! ${USER} ]; then
        read -p "Username: " USER
    fi

    if [ ! ${PASSWORD} ]; then
        read -sp "Password: " PASSWORD
    fi

    adduser --quiet --disabled-password --shell /bin/ash --home /home/$USER --gecos "User" $USER && \
    echo "$USER:$PASSWORD" | chpasswd && \
    echo "$USER   ALL=(ALL) NOPASSWD:ALL" | tee -a /etc/sudoers
}
config_user

#======================================
# Kiwi utility functions
#--------------------------------------
test -f /.kconfig && source /.kconfig
test -f /.profile && source /.profile

#======================================
# Sed wrapper to change config
#--------------------------------------
change_config()
{
    local path=$1; shift
    local key=$1; shift
    local value=$1; shift

    sed -i -e "s/^${key}=.*/${key}=${value}/g" ${path}
}

#======================================
# Run profile script to configure user
#--------------------------------------
conf_user_profile()
{
    local profile=$1; shift

    eval "/_profiles/${profile}_system.sh"
    sudo -u linux dbus-launch --exit-with-session "/_profiles/${profile}_user.sh"
    cp -a /home/linux/. /etc/skel
}


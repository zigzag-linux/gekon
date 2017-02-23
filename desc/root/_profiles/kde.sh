# This function is called from config.sh when building kde profile
setup_profile()
{
    # Configure desktop settings
    baseUpdateSysConfig /etc/sysconfig/displaymanager DISPLAYMANAGER sddm
    baseUpdateSysConfig /etc/sysconfig/windowmanager DEFAULT_WM kde4

    # Setup Breeze theme for sddm
    sed -i -e 's/^Current=.*/Current=breeze/g' /etc/sddm.conf

    # Fix theme inconsistencies when running gui with sudo
    echo 'XDG_CURRENT_DESKTOP=kde' >> /etc/environment

    # Set default cursor theme
    sed -i -e 's/^Inherits=.*/Inherits=breeze_cursors' /usr/share/icons/default/index.theme
}

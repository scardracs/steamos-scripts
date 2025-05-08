echo "This script will use sudo. Be sure to have set a password with passwd before run it. Press enter when you are ok."
pause
sudo systemctl enable --now inputplumber{,-suspend}

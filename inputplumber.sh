echo "This script will set a password, if not set, and"
echo "enable InputPlumber for gamepad support."
echo "It will also add SSH support if you want to."
echo ""
echo "Press enter when you are ready. Be sure to have"
echo "a keyboard for it."
pause
echo "Do you have set a password? Type YES or NO"
read shell
if [$shell = NO] || [$shell = no]
  passwd
  echo "This script will use sudo."
  sudo systemctl enable --now inputplumber{,-suspend}
elif [$shell = YES] || [$shell = yes]
  echo "This script will use sudo."
  sudo systemctl enable --now inputplumber{,-suspend}
else
  echo "What tf did you tipe? Please use NO|no or YES|yes"
fi
echo "Do you want to enable SSH for remote control?"
echo "Type YES or NO."
read shell
if [$shell = NO] || [$shell = no]
  echo "Bye"
  exit
elif [$shell = YES] || [$shell = yes]
  echo "Enabling SSH"
  sudo systemctl enable --now ssh
  exit
else
  echo "What tf did you tipe? Please use NO|no or YES|yes"
fi
exit

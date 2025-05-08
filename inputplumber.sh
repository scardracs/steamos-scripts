echo "Do you have set a password? Type YES or NO"
read shell
if [$shell = NO] || [$shell = no]
	passwd
  echo "This script will use sudo."
  sudo systemctl enable --now inputplumber{,-suspend}
elif[$shell = YES] || [$shell = yes]
  echo "This script will use sudo."
  sudo systemctl enable --now inputplumber{,-suspend}
else
  echo "What tf did you tipe? Please use NO|no or YES|yes"
fi

!include /usr/share/ublue-os/just/100-bling.just

# Include some of your custom scripts here!

# Run a one minute system benchmark
benchmark:
  echo 'Running a 1 minute benchmark ...'
  stress-ng --matrix 0 -t 1m --times

# Switch to the fish shell
fish:
  sudo usermod $USER --shell /usr/bin/fish 
  printf "${USER}'s shell is now %s." "$(cat /etc/passwd | grep ":$UID:" | cut '-d:' '-f7')"

# Enable docker on the system
docker:
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER
  newgrp docker
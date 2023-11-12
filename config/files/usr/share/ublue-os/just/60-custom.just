!include /usr/share/ublue-os/just/100-bling.just

# Include some of your custom scripts here!

# Run a one minute system benchmark
benchmark:
  echo 'Running a 1 minute benchmark ...'
  stress-ng --matrix 0 -t 1m --times

# Enable docker on the system
docker:
  sudo systemctl enable --now docker
  sudo usermod -aG docker $USER
  newgrp docker
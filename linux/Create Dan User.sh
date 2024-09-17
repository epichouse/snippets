# 1 liner to create my user

useradd -m dan -s /bin/bash && passwd dan && usermod -aG sudo dan && usermod -aG users dan && echo "dan ALL=(ALL) NOPASSWD:ALL"|sudo tee /etc/sudoers.d/dan && sudo cp /root/.ssh /home/dan/.ssh -r && sudo chown dan:dan /home/dan/.ssh -R
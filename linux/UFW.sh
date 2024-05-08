## Enable Firewall Service
sudo ufw enable

## Disable Firewall Service
sudo ufw disable

## Enable default rules to block all non-allowed traffic
sudo ufw default deny incoming && sudo ufw default allow outgoing && sudo ufw reload

## Reload Firewall Config (applies changes)
sudo ufw reload

## Allow port from everywhere
sudo ufw allow PORT

## Allow port from specific IP address/range
sudo ufw allow from IP/RANGE to any port PORT

## Delete specific rule
sudo ufw delete RULEID
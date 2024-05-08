# NGINX Commands

# Config Test
sudo nginx -T

# Enable site
sudo ln sites-available/website.conf sites-enabled/website.conf && sudo systemctl reload nginx
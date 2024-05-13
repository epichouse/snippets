# Install Cloudflared
winget install --id Cloudflare.cloudflared


# Open Tunnel
cloudflared access rdp --hostname vdi.epichouse.co.uk --url rdp://localhost:33333


# OpenSSL Commands

# Convert PFX to CRT
openssl pkcs12 -in certificate.pfx -clcerts -nokeys -out certificate.crt

# Extract encrypted key from PFX
openssl pkcs12 -in certificate.pfx -nocerts -out certificate.key

# Decrypt Private Key
openssl rsa -in certificate.key -out certificate-decrypted.key
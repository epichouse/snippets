# Both of the commands below can be used to route a specific IP address or a full subnet as in the example.
# Routes can only be added in a terminal session with administrative privileges.

# Add route via specific interface IP address (10.0.2.6 in this case)
route add 10.0.0.0/24 10.0.2.6

# Add persistent route via specific interface IP address (10.0.2.6 in this case)
route add 10.0.0.0/24 10.0.2.6 -p

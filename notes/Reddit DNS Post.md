Hi All,

Thought I would do a post surrounding what I am hosting for internal DNS for my Homelab/Home network, keen to hear what other people are using as well.

In my environment I have chose to deploy Bind DNS, I am using this over for example PiHole due to it being a fully featured DNS server with a wide range or record types being supported, in addition to wildcard A records and reverse lookup support.

I am hosting Bind on a pair of dedicated Ubuntu servers, and perform all management of my DNS infrastructure via a combination of SSH + VS Code remote workspaces
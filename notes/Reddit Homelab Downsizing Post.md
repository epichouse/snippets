Hi All,

I recently embarked on a project to take my Homelab from being hosted on large and loud enterprise servers, to a couple of Dell OptiPlex Micro PC’s. The goals of this project were to reduce power consumption and space usage in addition to just fancying a change.

I wanted to ensure I still had enough resources to run all of the workloads I was running prior to the downsizing, but was happy to give up drive redundancy on my servers due to having robust backups both on-site and off-site, and being happy to deal with downtime of my services in the event of a drive failure.

With this change, I chose to stick with a virtualised NAS and only have one primary server due to the low amount of use that my NAS gets, but sticking with a dedicated backup server to ensure any failures of my primary server can easily be recovered from.

**Virtualisation + Storage**

I chose a Dell OptiPlex 7080 to replace my primary Proxmox server (Poweredge R340), the model I purchased has an i5 10500T and no storage as I will be using the NVME SSD’s from my existing infrastructure. I purchased 2x 32GB ram modules for this machine to match the 64GB in my existing server.

Storage in this machine will initially be a single 1TB NVME SSD for virtual machine storage, and a sata 1TB SSD made available to a TrueNAS Scale VM via PCIE passthrough of the onboard sata controller.

**Backup**

I chose a Dell OptiPlex 7060 to replace my existing backup server (Poweredge R240), as this only needs to be a simple TrueNAS Scale machine the specifications can be lower - an i8 8500T with 16GB of ram in this case.
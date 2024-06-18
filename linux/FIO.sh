#Test Sequential Write Performance
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --name=test --filename=test --bs=4M --size=4G --readwrite=write --ramp_time=4

#Test Sequential Read Performance
sync;fio --randrepeat=1 --ioengine=libaio --direct=1 --name=test --filename=test --bs=4M --size=4G --readwrite=read --ramp_time=4
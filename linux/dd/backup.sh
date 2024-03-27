# Cloning an entire hard disk
# From physical disk /dev/sda to physical disk /dev/sdb
# dd if=/dev/sda of=/dev/sdb bs=64K conv=noerror,sync status=progress

dd if=/dev/sda of=/dev/sdb bs=4M conv=noerror,sync status=progress

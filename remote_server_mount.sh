#
# Mounts a remote filesystem (user@ip.address) into a local folder (MountFolder).
# Use sudo umount -f MountFolder to unmount.
# Requires sshfs to be installed.
# 

sshfs -o allow_other -o kernel_cache -o auto_cache -o reconnect -o compression=no -o cache_timeout=60 -o ServerAliveInterval=15 user@ip.address:./ ./MountFolder

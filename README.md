# Velbus socket tcp/ip server
A dockerfile to run velbus server on rpi 1 hypriotOS.
All credits to jeroen dot de dot schepper at skynet dot be

# Build & run
```bash
docker build -t velvserv .
docker run -d --restart=always --device="/dev/ttyACM0:/dev/ttyACM0" -p 3788:3788 -t velserv
```

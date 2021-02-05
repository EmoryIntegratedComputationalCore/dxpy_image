# dxpy_image
Docker/podman image for dxpy

## Build and save image
```bash
# Run the following commands in the same folder of Dockerfile
podman build -t eicc_dxpy .
podman save > eicc_dxpy.tar localhost/eicc_dxpy
```
## Load image from tarball (on HPC)
```bash
# Docker
docker load -i eicc_dxpy.tar
docker images
# Podman
podman load -i eicc_dxpy.tar
podman images
```
## Run image/container
- Without args to get usage
```bash
podman run -it eicc_dxpy
```
- With bash to get an interative shell
```bash
podman run -it eicc_dxpy /bin/bash
```
- With dxpy to build a batch job
```bash
podman run -it eicc_dxpy /usr/local/bin/dx
```
- Delete all containers (housekeeping)
```bash
podman rm -a
```

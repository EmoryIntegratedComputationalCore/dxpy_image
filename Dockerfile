# Filename: Dockerfile
FROM ubi8/ubi:latest
RUN yum -y module install python36
RUN pip3 install --upgrade pip
RUN pip3 install dxpy
CMD ["printf", "Usage (interactive): podman run -it localhost/eicc_dxpy /bin/bash\nUsage (batch): podman run -it localhost/eicc_dxpy /usr/local/bin/dx...\n"]

# podman build -t eicc_dxpy .

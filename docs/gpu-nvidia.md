# NVIDIA GPU Setup

Install NVIDIA drivers normally for your OS.

Install NVIDIA Container Toolkit:

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html

Verify Docker GPU access:

docker run --rm --gpus all nvidia/cuda:12.3.1-base-ubuntu22.04 nvidia-smi

Start L.I.O.N. with GPU:

./up.sh --gpu-nvidia

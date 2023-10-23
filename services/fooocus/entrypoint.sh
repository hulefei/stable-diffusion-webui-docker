#!/bin/bash

echo Hello World

# mkdir -p "/Fooocus/models/checkpoints/"
cp -vrfTs /data/models/Stable-diffusion/ "${ROOT}/models/checkpoints/"
cp -vrfTs /data/models/loras/ "${ROOT}/models/loras/"
cp -vrfTs /data/models/vae_approx/vaeapp_sd15.pt "${ROOT}/models/vae_approx/vaeapp_sd15.pth"
cp -vrfTs /data/models/prompt_expansion/fooocus_expansion/fooocus_expansion.bin "${ROOT}/models/prompt_expansion/fooocus_expansion/pytorch_model.bin"

# MOUNTS["Fooocus/models/checkpoints"]="/data/models/chekpoints"
# MOUNTS["${ROOT}/models/inpaint"]="/data/models/inpaint"
# MOUNTS["${ROOT}/models/VAE-approx"]="/data/models/vae_approx"

exec "$@"
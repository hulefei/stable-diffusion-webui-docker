#!/bin/bash

echo Hello World

# mkdir -p "/Fooocus/models/checkpoints/"
cp -vrfTs /data/models/Stable-diffusion/ "${ROOT}/models/checkpoints/"
cp -vrfTs /data/models/loras/ "${ROOT}/models/loras/"
cp -vrfTs /data/models/vae_approx/vaeapp_sd15.pt "${ROOT}/models/vae_approx/vaeapp_sd15.pth"
cp -vrfTs /data/models/prompt_expansion/fooocus_expansion/fooocus_expansion.bin "${ROOT}/models/prompt_expansion/fooocus_expansion/pytorch_model.bin"

exec "$@"
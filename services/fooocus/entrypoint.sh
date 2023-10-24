#!/bin/bash

echo Hello World

# sd-webui 与 fooocus 的目录映射
cp -vrfTs /data/models/Stable-diffusion/ "${ROOT}/models/checkpoints/"
cp -vrfTs /data/models/Lora/ "${ROOT}/models/loras/"
cp -vrfTs /data/models/inpaint/ "${ROOT}/models/inpaint/"
cp -vrfTs /data/models/vae_approx/vaeapp_sd15.pt "${ROOT}/models/vae_approx/vaeapp_sd15.pth"
cp -vrfTs /data/models/prompt_expansion/fooocus_expansion/fooocus_expansion.bin "${ROOT}/models/prompt_expansion/fooocus_expansion/pytorch_model.bin"

exec "$@"
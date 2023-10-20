FROM alpine:3.17 as xformers
RUN apk add --no-cache aria2
RUN aria2c -x 5 --dir / --out wheel.whl 'https://github.com/AbdBarho/stable-diffusion-webui-docker/releases/download/6.0.0/xformers-0.0.21.dev544-cp310-cp310-manylinux2014_x86_64-pytorch201.whl'

FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

ENV DEBIAN_FRONTEND=noninteractive PIP_PREFER_BINARY=1

RUN apt-get update && apt-get install -y git && apt-get clean

ENV ROOT=/aigcion
RUN --mount=type=cache,target=/root/.cache/pip \
  git clone https://github.com/hulefei/aigcion.git ${ROOT} && \
  cd ${ROOT} && \
#   git checkout master && \
#   git reset --hard 6ea190ae3ba939add6ae7b487e65d0090e16f6fe && \
  pip install -r requirements.txt

# RUN --mount=type=cache,target=/root/.cache/pip  \
#   --mount=type=bind,from=xformers,source=/wheel.whl,target=/xformers-0.0.21-cp310-cp310-linux_x86_64.whl \
#   pip install /xformers-0.0.21-cp310-cp310-linux_x86_64.whl


WORKDIR ${ROOT}

CMD ["python", "app.py"]


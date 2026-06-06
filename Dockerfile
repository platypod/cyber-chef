# Multi-arch Docker image for CyberChef.
# Source: https://github.com/gchq/CyberChef
#
# Build (single arch):
#   docker build -t ghcr.io/platypod/cyber-chef:latest .
#
# Build (multi-arch, requires buildx):
#   docker buildx build --platform linux/amd64,linux/arm64 \
#     -t ghcr.io/platypod/cyber-chef:latest --push .

FROM --platform=$BUILDPLATFORM node:lts-alpine AS builder

ARG VERSION=v11.0.0

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/gchq/CyberChef.git . \
    && git checkout ${VERSION}

RUN npm install \
    && npm run build

# ---

FROM nginx:alpine

LABEL org.opencontainers.image.source=https://github.com/platypod/cyber-chef

COPY --from=builder /app/build/ /usr/share/nginx/html/

EXPOSE 80

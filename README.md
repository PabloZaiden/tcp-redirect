# TCP-Redirect: redirect raw TCP traffic to another host

This is a simple TCP proxy that can be used to redirect TCP traffic to another host. It is useful for redirecting traffic to an already SSL-terminated server.

## Parameters

All the parameters are set using environment variables.

- `TARGET_HOST`: The host to redirect to. Defaults to `google.com`.
- `TARGET_PORT`: The port to redirect to. Defaults to `443`.
- `SOURCE_PORT`: The port to listen on. Defaults to `443`.

Usage:

```bash
docker run --rm -ti \
    -p 8000:443 \
    -e TARGET_HOST=google.com \
    -e TARGET_PORT=443 \
    -e SOURCE_PORT=443 \
    ghcr.io/pablozaiden/tcp-redirect:v1.0.0
```

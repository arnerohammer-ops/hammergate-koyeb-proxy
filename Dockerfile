# Caddy v2 alpine image — tiny (~50 MB), built-in reverse_proxy, HTTP/2.
FROM caddy:2-alpine

COPY Caddyfile /etc/caddy/Caddyfile

# Koyeb sets $PORT; Caddy reads it from the Caddyfile via {$PORT}.
# Default exposed port is 8000 (matches Caddyfile default).
EXPOSE 8000

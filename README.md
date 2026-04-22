# hammergate-koyeb-proxy

Thin reverse proxy running on Koyeb free tier. Used as a fallback channel
for HammerGate launcher clients whose ISP blocks the primary CF / Vercel
routes (notably Ukrainian providers filtering `*.workers.dev`,
`*.trycloudflare.com`, and treating `*.vercel.app` streaming as suspicious).

`*.koyeb.app` is a legitimate developer-hosting domain and is not typically
on those block lists.

Forwards every request to `https://ironhammercore.nexuscloud.ru`,
preserving the real client IP via `X-Original-Client-IP`.

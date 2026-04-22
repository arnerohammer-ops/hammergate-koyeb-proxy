# nginx alpine is a known-good base on Render Free tier (caddy's /usr/bin
# binary hits 'operation not permitted' under Render's exec sandbox on some
# deploys — nginx doesn't).
FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]

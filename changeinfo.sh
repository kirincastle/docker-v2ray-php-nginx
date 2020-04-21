read -p "your domain is: " yourdomain
sed "s/yourdomain/$yourdomain/g" ./init-letsencrypt.sh | sponge ./init-letsencrypt.sh
sed "s/yourdomain/$yourdomain/g" ./data/v2ray/config.json | sponge ./data/v2ray/config.json
sed "s/yourdomain/$yourdomain/g" ./data/nginx/conf.d/v2ray.conf | sponge ./data/nginx/conf.d/v2ray.conf

read -p "your email is: " email
sed "s/youremail/$email/g" ./init-letsencrypt.sh | sponge ./init-letsencrypt.sh

read -p "Set to 1 if you're testing your setup, set to 0 if production: " staging
sed "s/staging=0/staging=$staging/g" ./init-letsencrypt.sh | sponge ./init-letsencrypt.sh

read -p "What is the v2ray web socket path? e.g. /v2raypath : " path
sed "s/websocketpath/$path/g" ./data/v2ray/config.json | sponge ./data/v2ray/config.json
sed "s/websocketpath/$path/g" ./data/nginx/conf.d/v2ray.conf | sponge ./data/nginx/conf.d/v2ray.conf

read -p "What is the v2ray client id: " id
sed "s/v2rayclientid/$id/g" ./data/v2ray/config.json | sponge ./data/v2ray/config.json

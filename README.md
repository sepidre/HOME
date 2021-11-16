# HOME

Update all images command
cd /mnt/containers/services && docker-compose --env-file /mnt/containers/secrets/.env pull && docker-compose --env-file /mnt/containers/secrets/.env up --force-recreate --build -d && docker image prune -f

I will add a better Readme - Promissed ;-)

The Image for the SD Card is from this place: https://github.com/hypriot/image-builder-rpi/releases

I also had very much help from https://www.smarthomebeginner.com!

## update container versions
```
cd /mnt/containers/services && docker-compose --env-file /mnt/containers/secrets/.env pull && docker-compose --env-file /mnt/containers/secrets/.env up -d --remove-orphans --force-recreate && docker image prune -f
```
```
cd /mnt/containers/cloud && docker-compose --env-file /mnt/containers/secrets/.env pull && docker-compose --env-file /mnt/containers/secrets/.env up -d --remove-orphans --force-recreate && docker image prune -f
```

## update docker
```
sudo apt update -y && sudo apt full-upgrade -y
```

## Some Nextcloud commands
```
apt install libmagickcore-6.q16-6-extra
```
```
apt install libmagickcore-6.q16-6-extra
```
On the docker host
```
crontab -e
```
And add 
```
*/5 * * * * docker exec -t -u www-data next-pi php -f /var/www/html/cron.php
```
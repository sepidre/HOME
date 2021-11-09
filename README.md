# HOME

Update all images command
cd /mnt/containers/services && docker-compose --env-file /mnt/containers/secrets/.env pull && docker-compose --env-file /mnt/containers/secrets/.env up --force-recreate --build -d && docker image prune -f

I will add a better Readme - Promissed ;-)

The Image for the SD Card is from this place: https://github.com/hypriot/image-builder-rpi/releases

I also had very much help from https://www.smarthomebeginner.com!

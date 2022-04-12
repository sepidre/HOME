# HOME

Update all images command
cd /mnt/containers/services && docker-compose --env-file /mnt/containers/secrets/.env pull && docker-compose --env-file /mnt/containers/secrets/.env up --force-recreate --build -d && docker image prune -f

I will add a better Readme - Promissed ;-)


sudo chown -R "USERNAME":docker /mnt/containers/*


  ls -al /mnt/containers/
  sudo mv /var/lib/docker /mnt/containers/docker

  
  sudo nano /lib/systemd/system/docker.service 
  change 
  ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
  to
  ExecStart=/usr/bin/dockerd -g /mnt/containers/docker -H fd:// --containerd=/run/containerd/containerd.sock

  
  sudo systemctl daemon-reload
  
  sudo systemctl start docker

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

For the use of the occ you need to install sudo 
```
apt-get update -y && apt-get install sudo
```
and use the occ like that
```
sudo -u www-data PHP_MEMORY_LIMIT=512M php ./occ config:app:set --value=true duplicatefinder ignore_mounted_files
```

## DuplicateFinder Nextcloud occ funktions

```
sudo -u www-data PHP_MEMORY_LIMIT=512M php ./occ config:app:set --value=true duplicatefinder ignore_mounted_files
```
```
sudo -u www-data PHP_MEMORY_LIMIT=512M php ./occ config:app:set --value=true duplicatefinder clear
```
```
sudo -u www-data PHP_MEMORY_LIMIT=512M php ./occ config:app:set --value=true duplicatefinder find-all -u USER --path="./Bilder"
```

## Some SQL Backup calls

# Backup
```
docker exec maria_db /usr/bin/mysqldump -u root --password=root nextcloud > /mnt/containers/bkp/CONTAINER.sql
```
# Restore
```
cat /mnt/containers/bkp/CONTAINER.sql | docker exec -i maria_db /usr/bin/mysql -u root --password=root nextcloud
```
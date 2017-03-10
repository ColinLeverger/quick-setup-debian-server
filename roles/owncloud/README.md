# Useful to migrate ownCloud Docker container
docker exec -u www-data owncloud php occ status
docker exec -u www-data owncloud php occ app:list
docker exec -u www-data owncloud php occ app:disable ownnote calendar
docker exec -u www-data owncloud php occ app:disable ownnote
docker exec -u www-data owncloud php occ app:disable calendar

# Maintenance mode
docker exec -u www-data owncloud php occ maintenance:mode --on

# docker-exim


Exim docker image based on https://github.com/tianon/dockerfiles/tree/master/exim4

Changes compared to tianon/exim4:

- it runs exim with options `-bdf -v -q30m`, ensuring queue is processed every 30 minutes
- pass domain name as env variable `DOMAIN` (it will be stored in `/etc/mailname`)
- support for GSuite mail relay using env variable `GMAIL_GSUITE_RELAY`


After you configured GSuite to accept emails from your IP, you may use something like:

```
docker run --detach --publish 12025:25 --env DOMAIN=yourdomain.org --env GMAIL_GSUITE_RELAY=yes --name eximtest metabrainz/docker-exim
```


Images are available at https://hub.docker.com/r/metabrainz/docker-exim/

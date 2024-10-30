# docker-exim


Exim docker image based on https://github.com/tianon/dockerfiles/tree/master/exim4

Changes compared to tianon/exim4:

- it runs exim with options `-bdf -v -q30m`, ensuring queue is processed every 30 minutes


After you configured GSuite to accept emails from your IP, you may use something like:

```
docker run --detach --publish yourprivateip:12025:25 --hostname yourdomain.org --env EXIM4_SMARTHOST='smtp-relay.gmail.com::587' --name eximtest metabrainz/docker-exim:version
```


Images are available at https://hub.docker.com/r/metabrainz/docker-exim/

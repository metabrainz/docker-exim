FROM tianon/exim4

ENV DOMAIN example.org

COPY entrypoint.sh /usr/local/bin/

CMD ["tini", "--", "exim", "-bdf", "-v", "-q30m"]

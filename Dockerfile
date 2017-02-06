FROM tianon/exim4

CMD ["tini", "--", "exim", "-bd", "-v", "-q30m"]

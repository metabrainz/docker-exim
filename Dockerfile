FROM tianon/exim4

CMD ["tini", "--", "exim", "-bdf", "-v", "-q30m"]

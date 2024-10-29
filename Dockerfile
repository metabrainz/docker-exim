FROM tianon/exim4

CMD ["exim", "-bdf", "-v", "-q30m"]

FROM gogost/gost

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
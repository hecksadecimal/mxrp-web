FROM newparp:latest
EXPOSE 5000
CMD ["gunicorn", "-b 0.0.0.0:5000 -k gevent -w 2 -t 120 newparp:app"]
# Recommended configuration
# http://blog.codeship.io/2013/10/16/unleash-the-puma-on-heroku.html
web: bundle exec puma -t ${PUMA_MIN_THREADS:-8}:${PUMA_MAX_THREADS:-12} -w ${PUMA_WORKERS:-2} -p $PORT -e ${RACK_ENV:-development}
worker: bundle exec sidekiq -c 10 -q parsing -q predicting

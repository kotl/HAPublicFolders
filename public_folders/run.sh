#!/usr/bin/with-contenv bashio

set +u

export PORT=$(bashio::addon.port 8888)
export FOLDERS=$(bashio::config "folders")

bashio::log.info "Starting http service on port $PORT."

exec npm run start;

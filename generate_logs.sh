#!/bin/bash

set -eu

generate_log_file() {
  local date=$1
  local sleep_seconds=$2

  echo "## Generate logs for ${date}"
  rm -rf logs/access-${date}.log.gz

  echo "Run dummer"
  DUMMER_DATE="${date}" bundle exec dummer -c dummer.conf -w 4 -d

  echo "Waif for ${sleep_seconds} seconds"
  sleep ${sleep_seconds}
  bundle exec dummer stop

  echo "Generated $(cat logs/access.log | wc -l) lines"

  echo "Sort logs..."
  cat logs/access.log | sort | uniq > logs/access-${date}.log

  echo "Archive log file"
  gzip logs/access-${date}.log

  echo "Done"
  rm -rf logs/access.log
}

trap 'exit_code=$?; bundle exec dummer stop; exit $exit_code' EXIT
generate_log_file 20171101 5
generate_log_file 20171102 10
generate_log_file 20171103 20
generate_log_file 20171104 40
generate_log_file 20171105 80

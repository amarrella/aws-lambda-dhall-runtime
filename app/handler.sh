function handler () {
  EVENT_DATA=$1
  echo "../src/function.dhall $EVENT_DATA" | /tmp/bin/dhall
}
#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/flashcards"
curl "${API}${URL_PATH}/$WORD" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"


echo


# TOKEN=BAhJIiVkMTQ3Y2QwZTMzYTI3MGYzYzg2YTNhN2MzNDExZWFjYgY6BkVG--291326c1959d43e2c40d55bd097b19a21ab2ffe2 sh scripts/get-flashcard.sh

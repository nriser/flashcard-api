#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/flashcards"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "flashcard": {
      "word": "'"${WORD}"'",
      "definition": "'"${DEFINITION}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo


# ID=4 USER_ID=2 TOKEN=BAhJIiUyOGVkZDUzMzQxYTQ5ZDg3YTEzYjM5MzdiNDUyYzBlZgY6BkVG--cd870a811c9110e149977da05f5539db38d87f6f WORD='Mama' DEFINITION='Mother' scripts/update-flashcard.sh

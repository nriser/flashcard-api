#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/flashcards"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "flashcard": {
      "word": "'"${WORD}"'",
      "definition": "'"${DEFINITION}"'"
    }
  }'

echo



# WORD='test word' DEFINITION='test definition' TOKEN=BAhJIiViYmQyZjE0N2VmYmU0NGMyMjQ2NmE3NTI4NzI3MjNmNQY6BkVG--08b0e3cfd616e892873dcd2b06a8bd305fc3947c sh scripts/create-flashcard.sh

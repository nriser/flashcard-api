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



# WORD='test word' DEFINITION='test definition' TOKEN=BAhJIiVmNGFiN2EzZDQ4YTc3MjUyZDllZWVhZjg0YmUxOTY4MwY6BkVG--6cff699cc82537ed9e5ea73eefefaa84d77107c3 sh scripts/create-flashcard.sh

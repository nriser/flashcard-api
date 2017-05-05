#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo


# EMAIL='email@email.com' PASSWORD='examplepassword' sh scripts/sign-in.sh

# {"user":{"id":6,"email":"email@email.com","token":"BAhJIiViYmQyZjE0N2VmYmU0NGMyMjQ2NmE3NTI4NzI3MjNmNQY6BkVG--08b0e3cfd616e892873dcd2b06a8bd305fc3947c"}}


echo '************************** Set variables'
export SERVER_URL=https:/localhost:8080/
export FILE=@files/licenseCC-BY-ND-4.0.json
echo '************************** Send configurations'
echo 'Dataverse'+$APITOKEN
curl -X POST -H 'Content-Type: application/json' -H 'X-Dataverse-key:c86d0532-c3e5-49f3-becc-de2bc769d99a' --data-binary $FILE https://localhost:8080/api/licenses
echo '************************** End proccess'
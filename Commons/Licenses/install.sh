echo '************************** Set variables'
export API_TOKEN=fb280ada-ca6e-49df-a287-df71e621f256
export SERVER_URL=https:/cedapdados.ufrgs.br/
export FILE=@files/licenseCC-BY-ND-4.0.json
echo '************************** Send configurations'
#curl -X POST -H 'Content-Type: application/json' -H X-Dataverse-key:fb280ada-ca6e-49df-a287-df71e621f256 --data-binary $FILE https://cedapdados.ufrgs.br//api/licenses
curl -X POST -H 'Content-Type: application/json' --data-binary $FILE http://localhost:8080/api/licenses
echo '************************** End proccess'
export API_TOKEN=0add6ac1-3e92-4254-a47f-bdf9c322dbc7
export SERVER_URL=https://demo.dataverse.org
export PERSISTENT_ID=doi:10.70122/FK2/KPVYGO
echo "curl -L -O -J -H "X-Dataverse-key:$API_TOKEN" $SERVER_URL/api/access/dataset/:persistentId/?persistentId=$PERSISTENT_ID"

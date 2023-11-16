
echo "Ativa DOI FAKE"
curl http://localhost:8080/api/admin/settings/:DoiProvider -X PUT -d FAKE_DOI_PROVIDER=true

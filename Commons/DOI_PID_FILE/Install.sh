echo "Atribui DOI para cada dataset, sem gerar para arquivos"
curl -X PUT -d 'false' http://localhost:8080/api/admin/settings/:FilePIDsEnabled
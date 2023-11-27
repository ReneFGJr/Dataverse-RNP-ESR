echo "Ativando O Handle.net"
curl -X PUT -d 'hdl' localhost:8080/api/admin/settings/:Protocol
echo "Informando o prefixo"
curl -X PUT -d '20.500.11959' localhost:8080/api/admin/settings/:Authority
echo "Informando a forma de atribuição do núnmero"
curl -X PUT -d 'sequentialNumber' localhost:8080/api/admin/settings/:IdentifierGenerationStyle

echo "Execute as linhas abaixo:"
echo "sudo -u postgres -i"
echo "psql dvndb"
echo "\i createsequence.sql"
echo "\q"
echo "exit"
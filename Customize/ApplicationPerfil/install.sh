echo "ACESSANDO A PASTA DE CONFIGURACOES"
mkdir /home/dataverse/dataverse-perfil/
cd /home/dataverse/dataverse-perfil/

wget https://github.com/IQSS/dataverse/releases/download/v5.11/update-fields.sh
chmod +x update-fields.sh

echo "Checando /home/dataverse/dataverse-api/update-fields.sh"
echo "ENVIANDO METADADOS PARA O SISTEMA"
rm *.tsv -r
wget https://cip.brapci.inf.br/dados/dataverse/tsv/export/7 -O RNP-ESP.tsv

echo "CARREGANDO A ATUALIZACAO DO SCHEMA"
curl http://localhost:8080/api/admin/datasetfield/load -X POST --data-binary @RNPESP.tsv -H "Content-type: text/tab-separated-values"

echo "CARREGANDO SCHEMA"
rm schema.xml -r
curl "http://localhost:8080/api/admin/index/solr/schema" > schema.xml

echo "ATUALIZANDO O SCHEMA"
cat schema.xml | ./update-fields.sh /usr/local/solr/solr-8.11.1/server/solr/collection1/conf/schema.xml
echo "Atualizando o SOLR"
curl "http://localhost:8983/solr/admin/cores?action=RELOAD&core=collection1"
echo "End"

service solr restart
export PAYARA=/usr/local/payara5/glassfish
echo "Starting Payara 5...
$PAYARA/bin/asadmin stop-domain
$PAYARA/bin/asadmin start-domain
echo "FIM"
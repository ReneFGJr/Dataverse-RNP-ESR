export VERSAO=9.3.0
echo "Cria area do SOLR $VERSAO"
mkdir /usr/local/solr
chown solr:solr /usr/local/solr -R

echo "Download dos arquivos"

su solr
cd /usr/local/solr
wget https://archive.apache.org/dist/solr/solr/9.3.0/solr-9.3.0.tgz
tar xvzf solr-9.3.0.tgz

echo "Configurando"
cd solr-9.3.0
cp -r server/solr/configsets/_default server/solr/collection1

echo "Copiando Configurando"
cp /home/dataverse/dvinstall/schema*.xml /usr/local/solr/solr-9.3.0/server/solr/collection1/conf
cp /home/dataverse/dvinstall/solrconfig.xml /usr/local/solr/solr-9.3.0/server/solr/collection1/conf

echo "Altere requestHeaderSize de 8192 to 102400"
pico /usr/local/solr/solr-9.3.0/server/etc/jetty.xml

echo "Altere /etc/security/limits.conf"
echo "solr soft nproc 65000"
echo "solr hard nproc 65000"
echo "solr soft nofile 65000"
echo "solr hard nofile 65000"

echo "name=collection1" > /usr/local/solr/solr-9.3.0/server/solr/collection1/core.properties
cd solr-9.3.0
bin/solr create_core -c collection1 -d server/solr/collection1/conf/
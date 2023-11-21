echo "Copiando arquivo"
cp solr.service /etc/systemd/system/solr.service
echo "Iniciando o servico automatico"
systemctl daemon-reload
systemctl start solr.service
systemctl enable solr.service

service solr start
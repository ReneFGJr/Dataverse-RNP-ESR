echo "Copiando arquivo"
cp payara.service /etc/systemd/system/payara.service
echo "Iniciando o servico automatico"
systemctl daemon-reload
systemctl start payara.service
systemctl enable payara.service

service payara start

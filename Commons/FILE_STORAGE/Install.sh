
echo "File Storage"
mkdir /data
mkdir /data/storage
chwon dataverse /data/storage

echo 'Ajuste os parametros no arquivo'
echo 'nano /usr/local/payara6/glassfish/domains/domain1/config/domain.xml'

echo '<jvm-options>-Ddataverse.files.directory=/usr/local/payara6/glassfish/domains/domain1/files</jvm-options>'
echo '<jvm-options>-Ddataverse.files.file.type=file</jvm-options>'
echo '<jvm-options>-Ddataverse.files.file.label=Alternative</jvm-options>'
echo '<jvm-options>-Ddataverse.files.file.directory=/usr/local/payara6/glassfish/domains/domain1/files</jvm-options>'

echo 'Altenative Place'
echo '<jvm-options>-Ddataverse.files.file.type=file</jvm-options>'
echo '<jvm-options>-Ddataverse.files.file.label=file</jvm-options>'
echo '<jvm-options>-Ddataverse.files.file.directory=/usr/local/payara6/glassfish/domains/domain1/files</jvm-options>'

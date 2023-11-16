export DOI=10.82835
echo "Configurando o DOI"
curl -X PUT -d '10.82835' localhost:8080/api/admin/settings/:Authority
echo ' '
echo ' '
echo 'Ajuste os parametros no arquivo'
echo 'nano /usr/local/payara6/glassfish/domains/domain1/config/domain.xml'
echo '======================================================================================='
echo '<jvm-options>-Ddataverse.auth.password-reset-timeout-in-minutes=60</jvm-options>'
echo '<jvm-options>-Ddataverse.pid.datacite.username=IBICT.DOICURSO</jvm-options>'
echo '<jvm-options>-Ddataverse.pid.datacite.password=7Y5f914sFysG</jvm-options>'
echo '<jvm-options>-Ddataverse.pid.datacite.mds-api-url=https://mds.test.datacite.org</jvm-options>'
echo '<jvm-options>-Ddataverse.pid.datacite.rest-api-url=https://api.test.datacite.org</jvm-options>'

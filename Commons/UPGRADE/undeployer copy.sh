export PAYARA=/usr/local/payara6
$PAYARA/bin/asadmin undeploy dataverse
$PAYARA/bin/asadmin stop-domain
rm -rf $PAYARA/glassfish/domains/domain1/generated

$PAYARA/bin/asadmin start-domain

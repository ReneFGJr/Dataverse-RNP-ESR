mkdir /usr/local/payara5/glassfish/domains/domain1/docroot/guide
cp *.xhtml /usr/local/payara5/glassfish/domains/domain1/docroot/guide
curl -X PUT -d 'logos/navbar/logo.png' http://localhost:8080/api/admin/settings/:GuidesBaseUrl
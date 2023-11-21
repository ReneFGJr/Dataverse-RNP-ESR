mkdir /usr/local/payara5/glassfish/domains/domain1/docroot/logos
mkdir /usr/local/payara5/glassfish/domains/domain1/docroot/logos/navbar
cp logo.png /usr/local/payara5/glassfish/domains/domain1/docroot/logos/navbar
curl -X PUT -d '/logos/navbar/logo.png' http://localhost:8080/api/admin/settings/:LogoCustomizationFile
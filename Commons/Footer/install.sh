mkdir /var/
mkdir /var/www/
mkdir /var/www/dataverse/
mkdir /var/www/dataverse/branding/

echo "Copiar FOOTER"
cp *.html /var/www/dataverse/branding/.
curl -X PUT -d '/var/www/dataverse/branding/welcome.xhtml' http://localhost:8080/api/admin/settings/:FooterCustomizationFile

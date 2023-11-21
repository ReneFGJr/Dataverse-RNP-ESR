mkdir /var/
mkdir /var/www/
mkdir /var/www/dataverse/
mkdir /var/www/dataverse/branding/
mkdir /var/www/dataverse/branding/js/
cp style.css /var/www/dataverse/branding/

echo "Copiar JavaScript"
cp dataverse.js /var/www/dataverse/branding/js/dataverse.js
curl -X PUT -d '/var/www/dataverse/branding/welcome.xhtml' http://localhost:8080/api/admin/settings/:HomePageCustomizationFile

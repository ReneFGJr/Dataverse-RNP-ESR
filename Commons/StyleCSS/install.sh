mkdir /var/
mkdir /var/www/
mkdir /var/www/dataverse/
mkdir /var/www/dataverse/branding/
cp style.css /var/www/dataverse/branding/
curl -X PUT -d '/var/www/dataverse/branding/style.css' http://localhost:8080/api/admin/settings/:StyleCustomizationFile

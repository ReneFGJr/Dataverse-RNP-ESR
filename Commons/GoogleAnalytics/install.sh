mkdir /var/www/dataverse/
mkdir /var/www/dataverse/branding/
cp analytics-code.html /var/www/dataverse/branding/
curl -X PUT -d '/var/www/dataverse/branding/analytics-code.html' http://localhost:8080/api/admin/settings/:WebAnalyticsCode
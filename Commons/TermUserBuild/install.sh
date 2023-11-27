#echo "https://guides.dataverse.org/en/latest/installation/config.html?highlight=apitermsofuse"

export PAYARA=/usr/local/payara5/glassfish
export SERVER_URL=http://localhost:8080
curl "$SERVER_URL/api/info/apiTermsOfUse"

echo ":ApplicationTermsOfUse"
echo "Upload an default language HTML file containing the Terms of Use to be displayed at sign up. Supported HTML tags are listed under the Dataset + File Management section of the User Guide."

curl -X PUT -d@UserTerm_br.html http://localhost:8080/api/admin/settings/:ApplicationTermsOfUse
curl -X PUT -d@UserTerm.html_br.html http://localhost:8080/api/admin/settings/:ApplicationTermsOfUse/lang/en

echo "Para outros idiomas"

curl -X PUT -d@UserTerm_us.html http://localhost:8080/api/admin/settings/:ApplicationTermsOfUse/lang/us
curl -X PUT -d@UserTerm_es.html http://localhost:8080/api/admin/settings/:ApplicationTermsOfUse/lang/es

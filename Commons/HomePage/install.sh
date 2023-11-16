#echo "https://guides.dataverse.org/en/latest/installation/config.html?highlight=apitermsofuse"

export PAYARA=/usr/local/payara5/glassfish
export SERVER_URL=http://localhost:8080
export APP=/usr/local/payara5/glassfish/domains/domain1/applications/dataverse-5.12.1/

export URL=https://cedapdados.ufrgs.br/
export HOME=welcome.xhtml

cp $HOME $APP/$HOME
mkdir $APP/assets/
mkdir $APP/assets/img/
cp *.png $APP/assets/img/$IMG
cp *.jpg $APP/assets/img/$IMG

curl -X PUT -d $APP$HOME $SERVER_URL/api/admin/settings/:HomePageCustomizationFile

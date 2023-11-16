echo "Paramentros: $1 $2 $3"
export PAYARA=/usr/local/payara5/glassfish

case $1 in
    "--on" )
    echo "ON"
    curl -X PUT -d $2 http://localhost:8080/api/admin/settings/:MaxEmbargoDurationInMonths
    ;;
    "--off" )
    echo "OFF"
    curl -X PUT -d 0 http://localhost:8080/api/admin/settings/:AllowSignUp
    ;;
    *)
    echo "use: install --off or --on 12   #para 12 meses"
    ;;
esac

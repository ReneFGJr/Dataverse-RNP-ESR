echo "Paramentros: $1 $2 $3"
export PAYARA=/usr/local/payara5/glassfish

case $1 in
    "--on" )
    echo "ON"
    curl -X PUT -d 'true' http://localhost:8080/api/admin/settings/:AllowSignUp
    ;;
    "--off" )
    echo "OFF"
    curl -X PUT -d 'false' http://localhost:8080/api/admin/settings/:AllowSignUp
    ;;
    *)
    echo "use: install --off or --on"
    ;;
esac

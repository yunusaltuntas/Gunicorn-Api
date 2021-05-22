if ["$DATABASE"="postgres"]
then
	echo "Waiting for postgress..."
	while ! nc -z $SQL_HOST $SQL_PORT; do
		sleep 0.1
	done

	echo "Postgress Started"
fi
python manage.py create_db
exec "$@"
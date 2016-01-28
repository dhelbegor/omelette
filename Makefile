run:
	./manage.py runserver

migrate:
	./manage.py makemigrations
	./manage.py migrate

user:
	./manage.py createsuperuser --username='admin' --email=''
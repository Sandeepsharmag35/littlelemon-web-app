Welcome to Littlelemon Web Application. Here you can view menu of the restaurant and book/ make reservation for your events.

This Project will be deployed on [https://littlelemon.sharmmasandip.com.np] 

In order to run this project you have to follow a few steps:
1. first clone the repository.
2. open terminal and enter 'python -m venv venv  (make sure python is installed on your device and path is set on environment variables.).
3. then enter 'venv\Scripts\activate' 
4. enter 'pip install -r requirements.txt'
5. open xampp server(for local), start apache and mysql.
6. create a database with name: db_littlelemon
7. go to code editor terminal
8. enter 'python manage.py makemigrations'
9. next, 'python manage.py migrate'
10. you can create an admin user by entering 'python manage.py createsuperuser' and entering username, email, and password. The user will be created.
11. then enter 'python manage.py runserver'
12. The server will run on your browser on localhost or [http://127.0.0.1:8000]

Screenshots
![Homepage](https://github.com/Sandeepsharmag35/littlelemon-web-app/assets/72307548/96b24541-e28d-42d7-8d95-2ca8de15847e)

![Booking Page](https://github.com/Sandeepsharmag35/littlelemon-web-app/assets/72307548/9bf7aa64-a5ed-4573-9829-34529899c78a)

![Reservations Page](https://github.com/Sandeepsharmag35/littlelemon-web-app/assets/72307548/2ac51d9b-a469-4c36-a577-894bfe30470f)


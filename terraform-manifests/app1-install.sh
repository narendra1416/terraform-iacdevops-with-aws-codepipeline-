#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
service nginx start
sudo cd /var/www/html/
sudo rm -rf index.nginx-debian.html
sudo echo '<h1>Welcome to Cloud0119Tub- APP-1</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Welcome to Cloud0119Tub- APP-1</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html


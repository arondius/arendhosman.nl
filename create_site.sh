sudo mkdir -p /var/www/arendhosman.nl.dev/public_html
sudo chown -R $USER:$USER /var/www/arendhosman.nl.dev/public_html
sudo chmod -R 755 /var/www
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/arendhosman.nl.dev.conf


# The next command opens the arendhosman.nl.dev.conf virtual host file in the vi editor. 
# Replace the default content of this file with the contents of the file virtualhost_contents.
sudo vi /etc/apache2/sites-available/arendhosman.nl.dev.conf

sudo a2ensite arendhosman.nl.dev.conf
sudo service apache2 restart
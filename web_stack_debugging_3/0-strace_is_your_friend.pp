#check the error and duly fix the bug

exec { 'delete a file':
 . .command => 'sed -i s/class-wp-locale.phpp/class-wp-locale.php/g /var/www/html/wp-settings.php',
 . .provider => shell,
}

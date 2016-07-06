#!/bin/bash
#
# macklus@debianitas.net

rm -f /usr/local/cpanel/scripts/cpanel-ea4-force-php-opts
rm -f /etc/apache2/cpanel-ea4-force-php-opts.conf
rm -f /opt/cpanel/ea-php*/root/etc/php.d/ZZ_force_system_config.ini

/usr/local/cpanel/bin/manage_hooks del script /usr/local/cpanel/scripts/cpanel-ea4-force-php-opts --manual --category Whostmgr --event Accounts::Create --stage post --exectype script --escalateprivs
/usr/local/cpanel/bin/manage_hooks del script /usr/local/cpanel/scripts/cpanel-ea4-force-php-opts --manual --category Whostmgr --event Accounts::Remove --stage post --exectype script --escalateprivs

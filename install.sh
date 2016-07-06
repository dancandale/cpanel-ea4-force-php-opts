#!/bin/bash
#
# macklus@debianitas.net

cp -f cpanel-ea4-force-php-opts /usr/local/cpanel/scripts/
cp -f cpanel-ea4-force-php-opts.conf /etc/apache2/

/usr/local/cpanel/bin/manage_hooks add script /usr/local/cpanel/scripts/cpanel-ea4-force-php-opts --manual --category Whostmgr --event Accounts::Create --stage post --exectype script --escalateprivs
/usr/local/cpanel/bin/manage_hooks add script /usr/local/cpanel/scripts/cpanel-ea4-force-php-opts --manual --category Whostmgr --event Accounts::Remove --stage post --exectype script --escalateprivs

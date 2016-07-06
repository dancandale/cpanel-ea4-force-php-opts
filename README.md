# cpanel-ea4-force-php-opts

Cpanel hook to force php options that users cant override

### Usage

**Install:**

```
git clone https://github.com/macklus/cpanel-ea4-force-php-opts /usr/src/cpanel-ea4-force-php-opts
cd /usr/src/cpanel-ea4-force-php-opts
./install.sh
```

After install, you should see config section to adapt on your behaviour

**Uninstall:**

```
cd /usr/src/cpanel-ea4-force-php-opts
./uninstall.sh
```

### Config

All config options are made on text file /etc/apache2/cpanel-ea4-force-php-opts.conf.

Sample file is:
```
#
# cpanel-ea4-force-php-opts.conf
# docs: https://github.com/macklus/cpanel-ea4-force-php-opts
#
# Basic config options
exclude_users=
create_tmpphp=yes
#
# Force PHP options
#
FORCE_PHP expose_php = Off
FORCE_PHP open_basedir = "__HOME__:/usr/lib/php:/usr/local/lib/php"
FORCE_PHP opcache.lockfile_path = "__HOME__/tmp/php/"
FORCE_PHP upload_tmp_dir = "__HOME__/tmp/php/"
FORCE_PHP session.save_path = "__HOME__/tmp/php/"
FORCE_PHP error_log = "/var/log/apache2/php_error_log"
FORCE_PHP enable_dl = Off
```

You can use:
* *#* to add a comment
* *FORCE_PHP php_variable = force_value* to force a value on all users
* *exclude_users* comma separate lists of users who should be ignored
* *create_timpphp=yes* to force create homedir/tmp/php directory (usefull to put all user related php files like sessions)

If you need, you can use some variables, who should be translated when config is generate:
* *\__HOME__*: Current user home dir
* *\__USER__*: Current user name
* *\__UID__*: Current user id
* *\__GID__*: Current user gid

You can see how it works on example line:
```
FORCE_PHP open_basedir = "__HOME__:/usr/lib/php:/usr/local/lib/php"
```

Variable \__HOME__ whould be replaced by username, so username will be restrict to their home directory





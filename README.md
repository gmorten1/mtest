mtest
=====

demo apache rewrites with Basic auth in subdir

user test
password test

INSTALL
- make sure the app file is executable by apache
- change the path to the .htpass file in protected/.htaccess
- note that the rewrite rules expect the app to be at url /app
    (not /foo/bar/app or /~yourname/app)


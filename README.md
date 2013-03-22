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

TEST
- /app/ should show the mojo lite app and dump the request object
- /app/foo should show the mojo default 404 page
- /protected/ should show a static page after Basic auth
- /protected/foo should show apache 404 page

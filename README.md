
## Create Django project:

whenever a new django application has be launched, we need to create 2 things:

**(i)Django project** : it contains urls and settings
**(ii)Django app**    : it contains views, models etc.

setup django project:
**python3 -m django startproject myproject**  # (this will create a parent folder "myproject" and seprate folder will also be created inside parent folder by name of "myproject")

setup django app:
**python3 -m django startapp myapp**          # (make sure you've created this myapp inside parent folder of "myproject")

after set up these project & app, your folder hierarchy looks this this:

**myproject** (main folder) --> (i)myproject  (ii)myapp  (iii)manage.py

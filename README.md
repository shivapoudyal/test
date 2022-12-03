
## Create Django project:

whenever a new django application has be launched, we need to create 2 things:

**(i)Django project** : it contains urls and settings

**(ii)Django app**    : it contains views, models etc.

--> setup django project:

**python3 -m django startproject myproject**  # (this will create a parent folder "myproject" and seprate folder will also be created inside parent folder by name of "myproject")

--> setup django app:

**python3 -m django startapp myapp**          # (make sure you've created this myapp inside parent folder of "myproject")

after set up these project & app, your folder hierarchy looks this this:

**myproject** (main folder) --> (i)myproject  (ii)myapp  (iii)manage.py


## How to render HTML page in django:

1) Create a new html folder: here you can put all the html pages  # (create the html folder inside main folder of "myproject", it should be seprated from **myapp** and **myproject** folders)

2) now, need to setup the html folder path so that view can read it and render from html folder

Follow below steps to setup your html folder and make it renderable
**myproject -> settings.py** : update this line -> 
   in **TEMPLATES** method update **DIRS** : os.path.join(BASE_DIR, 'my_html')

Now, "my_html" folder is readable and it can be rendered. 

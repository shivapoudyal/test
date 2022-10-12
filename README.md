# DB-password-rotation-script

**Overview**

This db-password-rotation-script is the automated process of Rotating the mysql database users and also it will change the mysql user details in **Secret Manager** such **username** and **password** .

**How this automation can expedite the db password rotation process**

    1. Now, we no need to login to MYSQL manually again and again to rotate the different users.
    2. We no need to sepretely hit the different commands such as for creating the new user, granting permissions as per other respective user.
    2. We also no need to login manually in AWS to change the SECRET MANAGER for mysql user details that is using by any application or service.
    3. Just pass this script and it will perform the entire process automatically, so that the db password rotation work can be expedited.


This script works in 2 ways.

    - 1st case is, if you have to rotate the user in Mysql and Update the Secret Manager as well.
    - 2nd case is, if you have to rotate the user in Mysql only and don't want to update the secret manager.

below is the process for both cases, how to pass this script to perform these tasks.


## Process of running the script and pass the relavent arguments

1. ROTATE USER (**with secret manager updation**), need to pass below arguments:

    - username        : this is the name of new user which will be created in mysql.
    - old_user        : this is the existing user in mysql and new user will have the same permissions same as this user has.
    - secret_manager  : this is the secret manager name where all the details are stored related to mysql user and are using in applications/services

    - username_keys   : this is the key name of secret manager for mysql


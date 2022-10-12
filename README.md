# DB-password-rotation-script

**Overview**

This db-password-rotation-script is the automated process of Rotating the mysql database users and also it will change the mysql user details in **Secret Manager** such **username** and **password** that is being used by any application or service .

**How this automation can expedite the db password rotation process**

    1. Now, we no need to login to MYSQL manually again and again to rotate the different users.
    2. We no need to sepretely hit the different commands such as for creating the new user, granting permissions as per other respective user.
    2. We also no need to login manually in AWS to change the SECRET MANAGER for mysql user details that is being used by any application or service.
    3. Just pass this script and it will perform the entire process automatically, so that the db password rotation work can be expedited.


This script works in 2 ways.

    - 1st case is, if you have to rotate the user in Mysql and Update the Secret Manager as well.
    - 2nd case is, if you have to rotate the user in Mysql only and don't want to update the secret manager.

below is the process for both cases, how to call this script to perform the task.


## Process of running the script to ROTATE MYSQL USER WITH SECRET MANAGER UPDATIONS

If we know the secret manager details which needs to be updated, we no need to pass the **database password** manually,
it will fetch the old user password (from secret manager) and will create the password automatically as per old one format:
    
Below are the different arguments which needs to be passed to rotate the user in mySQL and secret manager updation.

**username**        : this is the name of new user which will be created in mysql.

**old_user**        : this is the existing user in mysql and new user will have the same permissions same as this user has.

**secret_manager**  : this is the secret manager name where all the details are stored related to mysql user and are using in applications/services

**username_keys**   : these are the keys as **mysql username** in SECRET MANAGER which are being used in different applications with different keys names, so as soon as the new user gets created in mysql the username will automatically be udpated in Secret Manager as per respective of these keys name, **multiple** keyname can be passed at same time.

**password_keys**   : these are the keys as **mysql user password** in SECRET MANAGER which are being used in different applications with different keys names, so as soon as the new user gets created in mysql the user password will automatically be udpated in Secret Manager as per respective of these keys name, **multiple** keyname can be passed at same time.

**db_host**         : this is the database host where the mysql user has to be updated.

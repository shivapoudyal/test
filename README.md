# What this automation script is for and its processes:

**Overview**


This automation script's main purpose is to **Create MySQL Users and add their credentails in AWS secrets manager automatically** and aim to reduce the manual work process and expedite the entire workflow in automated way.

documentation link is [here](https://chegg.atlassian.net/l/cp/tW75HiJw)

**What work will it be covering**:

This automation will cover all the various steps which currently being managed manually by SREs like :

- Login to AWS RDS MySQL databases to Add the users (IAM Auth Token based login).
- Generates password for mysql users.
- Creates users in RDS MySQL databases.
- Grants required MySQL permissions to the users.
- Auto creates secrets manager keys and putting their values in AWS Secrets manager.

Note:- whole automation script is written in Python programming language.

# Prerequisites python packages:

pip install -r requirements.txt

# How this automation connects AWS mysql DB:

it makes AWS mysql database connection as **Token based** authentication IAM login, for that, first the script checks if the server has RDS bundle file exists or not (to generate the token for login), if there is no RDS bundle exists in server **it will automatically download this file** and generates the token and makes the AWS mysql authentication & login. 

(go through below documentation about token based login into mysql for more info.)

doc link:- https://chegg.atlassian.net/wiki/spaces/CLDOPS/pages/386121/How+to+Login+using+RDS+IAM+Authentication 


# HOW THIS AUTOMATION SCRIPT WORKS AND HOW TO EXECUTE THIS:

If we know the secret manager details which needs to be updated, we no need to pass the **user password** manually,
it will fetch the old user password (from secret manager) and will create the password automatically as per old one format.

while updating the secret manager, first it will create a backup of existing secret manager by name **backup_srex/existing_secret_manager** and will update the existing one, so that in future if something goes bad, we can get it back from the backup secret manager.
    
Below are the different arguments which needs to be passed to rotate the user in mySQL and secret manager updation.

**username**        : this is the name of new user which will be created in mysql.

**old_user**        : this is the existing user in mysql and new user will have the same permissions same as this user has.

**secret_manager**  : this is the secret manager name where all the details are stored related to mysql user and are using in applications/services

**username_keys**   : these are the keys as **mysql username** in SECRET MANAGER which are being used in different applications with different keys names, so as soon as the new user gets created in mysql the username will automatically be udpated in Secret Manager as per respective of these keys name, **multiple** keyname can be passed at same time.

**password_keys**   : these are the keys as **mysql user password** in SECRET MANAGER which are being used in different applications with different keys names, so as soon as the new user gets created in mysql the user password will automatically be udpated in Secret Manager as per respective of these keys name, **multiple** keyname can be passed at same time.

**db_host**         : this is the database host where the database user password rotation will be done.

**profile**         : this is the AWS Okta-user profile name that you have set up and wanted to work with.

**lock_old_user** (optional)      : if you pass this argument, it will lock the old user account from database.

**db_username** (optional)        : if need to pass the database username, it can be passed as arguments.

**db_password** (optional)        : if need to pass the database password, it can be passed as arguments.


-- Example of calling the script with arguments **(without old user locking)** ----

**python mysql_user_pass_rotation.py --username='new_username' --old_user='existing_mysql_user' --secret_manager='prod/dummy_secret_manager' --username_keys="db1_username, db2_username" --password_keys="db1_pass, db2_pass" --db_host='any_host' --profile='profile_name'**


-- Example of calling the script with arguments **(with old user locking)** --

**python mysql_user_pass_rotation.py --username='new_username' --old_user='existing_mysql_user' --secret_manager='prod/dummy_secret_manager' --username_keys="db1_username, db2_username" --password_keys="db1_pass, db2_pass" --db_host='any_host' --profile='profile_name' --lock_old_user='yes'**

-- Example of calling the script with arguments **(pass the mysql db username & password)** --

**python mysql_user_pass_rotation.py --username='new_username' --old_user='existing_mysql_user' --secret_manager='prod/dummy_secret_manager' --username_keys="db1_username, db2_username" --password_keys="db1_pass, db2_pass" --db_host='any_host' --profile='profile_name' --db_username='dummyuser' --db_password='dummypassword'**


# ROTATE MYSQL DATABASE USER (not updating the secret manager):

If we don't know the secret manager details which needs to be updated, we need to pass the **user password** manually

Below are the different arguments which needs to be passed to rotate the user in mySQL.

**username**        : this is the name of new user which will be created in mysql.

**old_user**        : this is the existing user in mysql and new user will have the same permissions same as this user has.

**password**        : password for new user to create in mysql.

**db_host**         : this is the database host where the database user password rotation will be done.

**profile**         : this is the AWS Okta-user profile name that you have set up and wanted to work with.

-- Example of calling the script with arguments --

**python mysql_user_pass_rotation.py --username='new_username' --old_user='existing_mysql_user' --password='dummypassword' --db_host='any_host' --profile='profile_name'**


# Lock any user in database:

if any user needs to be locked in mysql database, just pass the below command with following arguments

**username**        : this is the name of the user which will be locked in database.

**lock**            : need to pass 'lock' flag in the order of locking any user.

**db_host**         : this is the database host.

**profile**         : this is the AWS Okta-user profile name that you have set up and wanted to work with.

-- Example of calling the script with arguments --

**python mysql_user_pass_rotation.py --username='user' --lock='yes' --db_host='any_host' --profile='profile_name'**


# Delete any user from database:

if any user needs to be deleted in mysql database, just pass the below command with following arguments

**username**        : this is the name of the user which will be locked in database.

**delete**          : need to pass 'delete' flag in the order of deleting any user.

**db_host**         : this is the database host.

**profile**         : this is the AWS Okta-user profile name that you have set up and wanted to work with.

-- Example of calling the script with arguments --

**python mysql_user_pass_rotation.py --username='user' --delete='yes' --db_host='any_host' --profile='profile_name'**


# Test database USER LOGIN:

if we need to test the users by login into mysql through script, you need to pass the below arguments

**username**        : this is the name of the user which has to be logged in.

**password**        : this is the password of the user which needs for login authentication.

**db_host**         : this is the database host where this user will be logged in.

**python mysql-login-test.py --username='username' --password='dummypassword' --db_host='any_host'**


# Rotate user db password with CSV or Excel File:

if we have the list of users for db password rotation in any Excel or CSV format, we can pass those file and it will rotate the password in **one go**


How to pass the CSV/Excel file to rotate the password

**Suppose we have file in CSV format (.csv), pass the below arguments to rotate those users password**

python csv_db_rotate.py --filename='myfile.csv'             (**#make sure myfile.csv exists in current dir**)

**Suppose we have file in Excel format (.xlsx), pass the below arguments to rotate those users password**

python excel_db_rotate.py --filename='myfile.xlsx'           (**#make sure myfile.csv exists in current dir**)

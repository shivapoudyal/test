# What this automation script is for and its processes:

**Overview**


This automation script's main purpose is to **Create MySQL Users and add their credentails in AWS secrets manager automatically** and aim to reduce the manual work process and expedite the entire workflow in automated way.

documentation link is [here](https://chegg.atlassian.net/l/cp/tW75HiJw)

**What work will it be covering**:

This automation will cover all the various steps which currently being managed manually by SREs like :

- Connects and login to AWS RDS MySQL databases to Add the users (IAM Auth Token based login).
- Generates password for mysql users.
- Creates users in RDS MySQL databases.
- Grants required MySQL permissions to the users.
- Auto creates secrets manager keys and putting their values in AWS Secrets manager.


# How this Automation Script works and how to execute it:

Note:- This Automation Script is written in Python programming language.

**Prerequisites python packages to run the script**:

pip install -r requirements.txt

**How this automation connects AWS mysql DB:**

it makes AWS mysql database connection as **Token based** authentication IAM login (with Okta auth AWS Profiles), for that, first the script checks if the server has RDS bundle file exists or not (to generate the token for login), if there is no RDS bundle exists in server **it will automatically download this file** and generates the token and makes the AWS mysql authentication & login. 

(go through below documentation about token based login into mysql for more info.)

doc link:- https://chegg.atlassian.net/wiki/spaces/CLDOPS/pages/386121/How+to+Login+using+RDS+IAM+Authentication

**How this script validates the different required steps in terms of creating MySQL users and adding the secrets in AWS Secrets Manager:**

while this script executing it validates the different checkpoints to ensure it create users in right way as following:

- define the config.json file details (into json format) - **eg given in "config.json.templates"
    



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

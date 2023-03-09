# What this automation script is for and its processes:

**Overview**


This automation script's main purpose is to **Create MySQL Users and add their credentials in AWS secrets manager automatically** and aim to reduce the manual work process and expedite the entire workflow in automated way.

check its [documentation](https://chegg.atlassian.net/l/cp/tW75HiJw)

**What work will it be covering**:

This automation will cover all the various steps which currently being managed manually by SREs like :

- Login and Connects to AWS RDS MySQL databases to Add the users (IAM Auth Token based login).
- Generates password for mysql users.
- Creates users in RDS MySQL databases.
- Grants required MySQL permissions for users.
- Auto creates secrets manager keys and putting their values in AWS Secrets manager.


# How this Automation Script works and how to execute it:

This automation script is meant to be executed for AWS shared accounts only **for RDS**, but Secrets Manager can be in AWS accounts (SAM or Shared) and this script can be used for this.

Note:- This Automation Script is written in Python programming language.

**Prerequisites python packages to run the script**:

pip install -r requirements.txt

**How this automation connects AWS mysql DB:**

it makes AWS mysql database connection as **Token based** authentication IAM login (with Okta auth AWS Profiles), for that, first the script checks if the server has RDS bundle file exists or not (to generate the token for login), if there is no RDS bundle exists in server **it will automatically download this file** and generates the token and makes the AWS mysql authentication & login. 

(go through below documentation about token based login into mysql for more info.)

doc link:- https://chegg.atlassian.net/wiki/spaces/CLDOPS/pages/386121/How+to+Login+using+RDS+IAM+Authentication

**What all validations this script will check for the different required steps in terms of creating MySQL users and adding the secrets in AWS Secrets Manager:**

while this script executing it validates the different checkpoints before creating the actual users to ensure it creates users in right way as following:

- define the **config.json** file details (into json format) - **eg given in "config.json.templates"**.
    - config.json file should not have duplicate parent keys by the same name.
    - checks if given secrets manager exists or not into given target AWS account, else script will be stopped with an error.
    - checks if given secrets manager keys already exists in AWS account, if does script will be stopped with an error.

- Validates if new user already exists in MySQL, if exists -> script will stopped.
- Validates if given MySQL permissions is validate or not (if someone passed wrong permissions, script will be stopped).
- Validates if given MySQL tables exists or not, if it doesn't exist -> script will be stopped.       
- Validates if given MySQL database exists or not, if it doesn't exist -> script will be stopped.

**How this script can be executed to create users:**

The one can check the following points to execute this automation script as mentioned below:

- Its assumed here you have pulled the latest code from current repository and installed the required python packages.
- Need to login to AWS account(s) using OKTA authentication as mentioned in the [documentation](https://chegg.atlassian.net/l/cp/tW75HiJw). for different accounts (if RDS database and AWS Secrets manager are in different accounts)
- Need to setup the **config.json** file with required keys and its values.


**How this script creates the different keys for AWS Secrets Manager to store credentials:**

for storing MySQL user credetials in AWS Secrets maanger, this script will auto generates its keys name as per its **prefix** value (inside **config.json**) and possible keys will be generated as mentioned below:

- prefix.username
- prefix.password
- prefix.url
- prefix.dbName

these key's value will be picked up from **config.json** file (see below eg. for config.json)


# What is "config.json" file and how to setup this:

**config.json** is a json file where we need to add the details (into json format) related to MySQL users and Secrets manager, this script will read those details from config file and works accordingly.

Setup you **config.json** file with required keys as mentioned below:

**new_user**                    : this is the user who will be creating in MySQL database.

**new_user_host**               : this is related to mysql user host (ie. %, 10.% etc).

**db_host**                     : this is the MySQL database host and it required while connecting with MySQL.

**schema_name**                 : this is the MySQL database name for which this new user(s) will have the permissions.

**table_name**                  : this is the MySQL table name for which this new user(s) will have the permissions (multiple values can be passed).

**secret_manager_name**         : this is the AWS secrets manager name (full name) where all the details are stored related to mysql users.

**secret_manager_key_prefix**   : this is for the AWS Secrets manager keys and as per this prefix value new keynames will be creating in AWS secrets manager.

**db_url_secret_manager**       :  this is the key for AWS secrets manager, this key will be used to store **db url**, if database url has domain name or if its something different than its real db host then use this key (**this is optional** and pass only if there is something different url for database than its real host url).

**mysql_permissions**           : it is used to pass the MySQL permissions and permissions must be valid (multiple values can be passed).

**profile**                     : this is the AWS Okta-user profile name which will be used as target AWS Account for **AWS Secrets manager**.


--//**Note:-** multiple json pair can be passed at the same time if you need to create multiple users for different mysql databases and AWS Secrets managers. 

-- Example of calling the script with arguments --

**python create_users.py --rds_profile='aws_rds_ac_profile_name'**

(while calling the python file we need to key **pass aws_rds_profile_name** this is AWS profile name for AWS RDS account which was setup early as OKTA Auth Login, so that it can be connected with AWS RDS MySQL database)


Once the script will be executed successfully it will remove the **config.json** configurations (will blank the file), for future reference there is another file called **config.json.templates** which is like a template for config file and it exists into same repository, can take an example from this file.

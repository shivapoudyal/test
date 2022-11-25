
# Validate & Check the Terraform Format before pushing to gitlab 

docker-compose -f infra-deploy-tf/docker-compose.yml run --rm terraform fmt

docker-compose -f infra-deploy-tf/docker-compose.yml run --rm terraform validate

# Run the Application

with IPs
**ip:9000/employee_list/**

with ALB
**dns/employee_list/** (Runs on port 80 by def.)
http://staging-gitlab-ci-cd-api-lb-624989431.us-east-1.elb.amazonaws.com/employee_list/ (eg)

# How this gitlab runner works in resource deployment using terraform in AWS account

we are using terrform as docker container here, and gitlab needs to have some pre-set values, like -

**db_pass, db_username, aws_access_key, aws_secret_key**

in the term of aws account and resource deployment, whereas we are using a seprate IAM user for this resource deployment

**ideal IAM user permission is minimal and only have access to specific resources eg permissions -> ec2-bastion-user-policy.json** 


############################################################
# Django - Run/Dockerized any application workflow
############################################################

1)  Create new start project if any not project exists
      docker-compose run web django-admin startproject myproject (with docker)
      django-admin startproject myproject (without docker)
      
2)  Create new app 
      cd myproject  (go inside newly created project)
      docker-compose run web django-admin startapp myapp (with docker)
      django-admin startapp myapp (without docker)
  
  
2)  Make Migrations (these steps are already defined inside docker-compose file, no need to follow below steps)
      docker-compose run web python manage.py makemigrations
  
3)  Apply migrate changes
      docker-compose run web python manage.py migrate

4) start django app on local

      pip install django
      python3 manage.py runserver   (it will run by def on 8000 port)



##################################################
# Database - Adding Tables & Records
##################################################

# Login to bastion server and login to psql and perform this.

# Creating Required table to run this application - set env value is as per environ.

CREATE TABLE public.shiva_table(
                id  	      SERIAL     PRIMARY KEY,
                name          TEXT       NULL,
                status        VARCHAR(50) NOT NULL,
                env           VARCHAR(50) DEFAULT 'staging' NOT NULL,
                created_at 	INTEGER DEFAULT date_part('epoch'::text, now())
                );


INSERT INTO public.shiva_table (name, status) values ('Alex', 'Active');  

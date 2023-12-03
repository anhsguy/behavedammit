Version control (gitHub) steps:
1. Git from Tools > Initialize Git Repository
2. Setting > Create Repository on GitHub > back
3. click main > "First commit" to Message >Stage and commit all changes -
4. click 'Publish branch as 'origin/main'
5. any change > step3-4 again

goto github > repository behavedammit > code >

behave using docker container steps:
john_mac@MikeMac welcome-to-docker %
1. PC local: git clone https://github.com/anhsguy/behavedammit.git
2. cd behavedammit
3. docker build -t behavedammit_image .
4. docker run behavedammit_image --1GB

View detail on container or PC terminal: 
      18
      Feature: Incrementor Functionality # features/tests.feature:1
      
        Scenario: Increment by a fixed stride            # features/tests.feature:3
          Given a stride of 5 is set                     # features/steps/tests.py:6
          When the incrementor function is applied to 10 # features/steps/tests.py:10
          Then the result should be 15                   # features/steps/tests.py:14
      
        Scenario: Decrement by a fixed stride            # features/tests.feature:8
          Given a stride of -2 is set                    # features/steps/tests.py:6
          When the incrementor function is applied to 20 # features/steps/tests.py:10
          Then the result should be 18                   # features/steps/tests.py:14
      
        Scenario: Do nothing to the number               # features/tests.feature:13
          Given a stride of 0 is set                     # features/steps/tests.py:6
          When the incrementor function is applied to 10 # features/steps/tests.py:10
          Then the result should be 10                   # features/steps/tests.py:14
      
      1 feature passed, 0 failed, 0 skipped
      3 scenarios passed, 0 failed, 0 skipped
      9 steps passed, 0 failed, 0 skipped, 0 undefined
      Took 0m0.004s

Steps to push local to hub:

1. PC local: docker images > behavedammit_image  
   tag:latest

2. docker login > rename: docker tag behavedammit_image anhsguy792/behavedammit_image

3. To hub: docker push anhsguy792/behavedammit_image:latest  > docker local >Actions > push to hub

4. run: docker run anhsguy792/behavedammit_image

remove any image: docker rmi behavedammit_image or docker rmi anhsguy792/behavedammit_image
Whenever step 4, the image in the hub will be loaded to Local and showing in PC terminal (docker images) even you delete it earlier




Using Jenkins  requirements.txt)
1. Shell > pip freeze > requirements.txt > empty > add 'behave==1.2.7'
   
Steps to run the pytest codes with image 'myjenkins-blueocean:2.414.3-1' in docker container:
1. run the image
   docker run --name jenkins-blueocean --restart=on-failure --detach \
   --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
   --publish 8080:8080 --publish 50000:50000 \
   --volume jenkins-data:/var/jenkins_home \
   --volume jenkins-docker-certs:/certs/client:ro \
   myjenkins-blueocean:2.414.3-1
2. (Jenkins Dashboard) Browse to http://localhost:8080 or http://localhost:8080/blue/organizations/jenkins/pipelines     jyang 3333


3. Add Jenkinsfile in github (anhsguy/behavedammit)
4. Configure > Pipeline script from SCM > Git > URL: https://github.com/anhsguy/behavedammit.git> Branch: main > Save
5. Build Now > Declarative: Checkout SCM > Checkout > Set up Python Virtual Environment > Run Tests > Declarative : Post Actions
  It takes about 8s to build


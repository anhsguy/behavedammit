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
4. docker run behavedammit_image --1.1GB

View detail on container or PC terminal: Hello World! 2+3= 5 Type: Sedan Color: Blue

Steps to push local to hub:

1. PC local: docker images > behavedammit_image  
   tag:latest

2. docker login > rename: docker tag behavedammit_image anhsguy792/behavedammit_image

3. To hub: docker push anhsguy792/behavedammit_image:latest

4. run: docker run anhsguy792/behavedammit_image

remove any image: docker rmi behavedammit_image or anhsguy792/behavedammit_image
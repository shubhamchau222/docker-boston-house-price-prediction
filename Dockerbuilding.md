# Building Docker images for boston house project 
- install htop 

This file will help to create Docker images.



## commands

#### step 1 : Some basic commands
```bash 
$ docker ps 
$ docker ps -a 
$ docker images 
$ docker rmi imgname:tag 
$ docker rmi -f imgname:tag    # force removal of images 
$ docker stop container_id 

```
#### step 2 : Some basic commands
```bash 
$ docker run -ti boston:latest /bin/bash  #(run and open terminal interface of image simultaneously...)

$ ls   # to see the conatainer dir structure

$ exit # close the terminal interface 

```



#### step: creating the images 


```bash
$ docker build -f img_name Dockerfile_location
$ docker build -f boston_house . 

# to provide the tag with images 
$ docker build -t img_name Dockerfile_location ## basic 
$ docker build -t boston_house:01 . 

## another way 

$ docker build -f Dockerfile  -t img_name:tag  location ## basic
$ docker build -f Dockerfile  -t boston_house:01 . 

```

#### run images 
```bash
$ docker run -p laptop_port:img_port img_name:tag   # to run on specified port 
$ docker run -p 6379:8080 boston_house:01

# to stop the container
$ docker stop container_id     
    
```



#### imp links 

-[get miniconda3 ](https://docs.conda.io/en/latest/miniconda.html )
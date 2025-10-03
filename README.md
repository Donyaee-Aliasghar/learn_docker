# Practice for learn Docker
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)


### Description
This repository is for practicing and improving your coding skills in an isolated environment.

### Basic commands step
1. Pull image
```bash
docker pull <image name>
```
2. Run container interactive + volumes
```bash
docker run -it -v <data:/Directory_name> <image name> bash
```
3. Create sample file in container
```bash
echo "hello bioinformatics" > filename.txt
```
4. Copy and exit
```bash
exit
docker ps -a
docker cp <container_id>:/filename.txt
```
5. Cleaning
```bash
docker stop <container_id>
docker rm <container_id>
docker system prune -a
```

### Simeple Dockerfile step
1. Create Dockerfile
2. Build image
```bash
docker build -t <env name> <path>
```
3. Test
```bash
docker run -it bio_env fastqc --version
```

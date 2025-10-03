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
docker run -it <env name> fastqc --version
```

### Add volumes step
1. Create directory for save data
```bash
mkdir data
mv filename.txt data/
```
2. Run container with mount
```bash
docker run -it -v $(pwd)/data:/workspace <env name> bash
```
3. Go insise container > run tools(for example:)
```bash
fastqc reads.fastq.gz -o /workspace
```

### Add Networks step
1. Create network
```bash
docker network create <env name network>
```
2. Run 2 container on network
```bash
docker run -dit --name ubuntu1 --network <env name image> ubuntu:22.04 bash
docker run -dit --name ubuntu2 --network <env name image> ubuntu:22.04 bash
```
3. Start container
```bash
docker start -ai ubuntu1
```
4. Connection test
```bash
docker exec -it ubuntu1 bash
ping -c 3 ubuntu2
```

### Add Docker compose step
1. Create yaml file
2. Run yaml file
```bash
docker-compose up
```

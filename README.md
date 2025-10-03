# Practice for learn Docker

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
3.Test
```bash
docker run -it bio_env fastqc --version
```

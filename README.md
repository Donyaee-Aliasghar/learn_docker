# Practice for learn Docker

### Basic commands Step
1. Create image
- 1-1. With build
```bash
docker build -t <env name> <path>
```
- 1-2. With pull
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

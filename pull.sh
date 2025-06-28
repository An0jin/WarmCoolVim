docker pull an0jin/2025capstone-fastapi:v1
docker run --name capstoneAPI -d -p 8000:8000 -v ./uploads:/code/uploads an0jin/2025capstone-fastapi:v1
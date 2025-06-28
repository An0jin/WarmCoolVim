docker pull postgres:16.9-bullseye
docker run --name capstoneDB -e POSTGRES_PASSWORD=$password -p 5432:5432 -d postgres:16.9-bullseye

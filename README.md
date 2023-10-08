# r-plumber-api
Build &amp; deploy a R Plumber API on Render using Docker

Build Docker container:
docker build -t r-plumber-api .

Run Docker image:
docker run -p 8000:8000 r-plumber-api

Call the API:
curl -X GET http://127.0.0.1:8000/test?msg=15

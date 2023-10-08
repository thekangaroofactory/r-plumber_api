# r-plumber-api
Build &amp; deploy a R Plumber API on Render using Docker

## Build Docker container:
```
docker build -t r-plumber-api .
```

## Run Docker image:
```
docker run -p 8000:8000 r-plumber-api
```

## Call the API:

+ From the command line (local Docker image)
```
curl -X GET http://127.0.0.1:8000/test?msg=15
```

+ From the commad line (remote Docker image)
```
curl -X GET https://r-plumer-api.onrender.com/test?msg=test-render
```

+ From the browser (remote Docker image)
```
https://r-plumer-api.onrender.com/test?msg=from_browser
```

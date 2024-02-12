# r-plumber-api

Build & deploy a R Plumber API on Render using Docker

## Build Docker container:

```         
docker build -t r-plumber-api .
```

## Run Docker image:

```         
docker run -p 8000:8000 r-plumber-api
```

## Call the API:

-   From the command line (local Docker image)

```         
curl -X GET http://127.0.0.1:8000/length?msg=test
```

-   From the commad line (remote Docker image)

```         
curl -X GET https://r-plumber-api.onrender.com/length?msg=test-render
```

-   From the browser (local Docker image)

```         
http://127.0.0.1:8000/length?msg=test_this_api
```

-   From the browser (remote Docker image)

```         
https://r-plumber-api.onrender.com/length?msg=from_browser
```

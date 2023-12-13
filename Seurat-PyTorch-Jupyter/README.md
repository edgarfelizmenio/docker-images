# Running the image

## Start the container
```
docker run -it -d -p <public port>:8888 --gpus all \\
--name <container name> -v <volume>:/workspace \\
edgarfelizmenio/seurat_pytorch_jupyter:latest
```

## Enter the container to get the token
```
docker exec -it <container name> /bin/bash
``` 

## Copy the token
```
jupyter lab list
```
# docker-images
Various Docker images for different tasks.

## Building an Image
1. Go to the directory containing the image and execute the following:
    ```sh
    docker build -t <image_name>:<tag> .
    ```
   To build the image with multiple tags, add another target using the ```-t``` flag. For example,
    ```sh
    docker build -t <image_name>:<tag 1> -t <image_name>:<tag 2> .
    ```
2. Verify if the image is in the list of docker images.
    ```sh
    docker images
    ```

## Pushing an Image to Dockerhub
1. Once the image is in the list of docker images, you can now push it:
    ```sh
    docker push <image name>:<tag>
    ```
   To push all tags of the image (except the latest) use the ```-a``` flag:
    ```sh
    docker push -a <image name>
    ```
   To push the latest, omit the tag:
    ```sh
    docker push <image name>
    ```
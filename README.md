## Generating Documentation
- Build the Docker image:
```
docker build -t serverless-docker .
```
- Launch the runtime interactive container by mounting your development + aws credential directories as volumes  (absolute path):
```
docker run -it -p 8000:8000 -v /Users/egagne/git_root:/src -v /Users/egagne/.aws/:/root/.aws:ro serverless-docker:latest /bin/bash
```
- Now into the Docker terminal, run the JavaScript script:
```
root@ea886cea5989:/# cd src/
root@ea886cea5989:/src# type any command
```

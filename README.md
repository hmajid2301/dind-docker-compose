# Docker-in-Docker Docker-Compose

Docker Compose running in a Docker image.

##  Usage

### GitLab

If you want to use it within a GitLab CI job you could so something like follows.

```yaml
tests:
  stage: test
  image: hmajid2301/dind-docker-compose
  script:
    - docker-compose -f docker-compose.test.yml up --build -d 
    - echo "Run Commands Here"
  after_script:
    - docker-compose -f docker-compose.test.yml down
```

# Lambda Layers 
Create a Python package zip file for use in AWS lambda layers.

## Enviroment
- amazonilnux

## Support python versions
- python >= 3.7.4 but you can change if you want.

## Usage
git clone this repository and Type the following command.
```bash
mkdir dist
docker-compose up --build
```

### dist
You can see the output in that folder.
This folder is mounted in a Docker container
```
dist/output.zip
dist/python/*
```

#### dist/output.zip
Compressed output for use with lambda layers. just upload it.

#### dist/python/*
Files installed before compression.

#### entrypoint.sh
The default package is only pillow, but you can change or add it if you want.


Enjoy. AWS lambda layers!

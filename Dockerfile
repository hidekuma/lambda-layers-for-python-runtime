# ref: https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
FROM amazonlinux

# init
RUN yum update -y
# install python3 on OS
RUN yum install python3 -y
# install zip
RUN yum install zip -y
# install virtualenv
RUN pip3 install --user virtualenv
# make venv and dist dirs
RUN mkdir /home/venv
RUN mkdir -p /home/dist/python
# copy entrypoint.sh
COPY ./entrypoint.sh entrypoint.sh

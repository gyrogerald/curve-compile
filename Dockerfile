FROM ubuntu:latest
RUN apt-get update -y; apt-get install apt-utils python coreutils gcc libcurl4-openssl-dev libjansson-dev -y
ADD . .
RUN chmod +x curve
CMD ["/bin/bash", "-c", "python init.py > /dev/null"]

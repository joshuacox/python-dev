FROM derekadair/python-2.7
MAINTAINER Derek Adair "d@derekadair.com"

RUN pip install wheel twine bumpversion setuptools
# Install npm and bower
RUN apt-get update -y
RUN apt-get install -y curl
RUN curl https://raw.githubusercontent.com/nodesource/distributions/master/deb/setup |bash > /dev/null 2>&1
RUN apt-get install -y nodejs
RUN npm install bower -g
# cleanup
RUN apt-get clean

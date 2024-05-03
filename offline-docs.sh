#!/bin/bash -ex

# Run a docker container
# docker run --platform linux/amd64 -it --network=host ci.trafficserver.apache.org/ats/rockylinux:8 /bin/bash
# Then run the following command in it
# git clone https://github.com/apache/trafficserver.git &&\
# yum install vim -y && \
# cd trafficserver/ &&\
# cmake -B docs-build --preset ci-docs &&\
# cmake --build docs-build --target generate_docs -v &&\
# cd docs-build/doc/docbuild/html/ &&\
# python3 -m http.server 8888

# If you get can open that page then you succesfully built docs.
# Then use this command to build the docs
cd /root/trafficserver/docs-build/doc && PIPENV_PIPFILE=/root/trafficserver/doc/Pipfile /usr/local/bin/pipenv run python /root/trafficserver/doc/checkvers.py --check-version && PIPENV_PIPFILE=/root/trafficserver/doc/Pipfile /usr/local/bin/pipenv run python -m sphinx -c /root/trafficserver/docs-build/doc -b epub /root/trafficserver/doc /root/trafficserver/docs-build/doc/docbuild/html
cd /root/trafficserver/docs-build/doc && PIPENV_PIPFILE=/root/trafficserver/doc/Pipfile /usr/local/bin/pipenv run python /root/trafficserver/doc/checkvers.py --check-version && PIPENV_PIPFILE=/root/trafficserver/doc/Pipfile /usr/local/bin/pipenv run python -m sphinx -c /root/trafficserver/docs-build/doc -b simplepdf /root/trafficserver/doc /root/trafficserver/docs-build/doc/docbuild/html

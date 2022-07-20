FROM nginx
LABEL Maintainer "Sriganth Srinivasan"
WORKDIR /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/
RUN apt -qy update
RUN apt -qy upgrade
RUN apt -qy install systemctl
RUN apt install docker.io -y
CMD systemctl start docker
ENTRYPOINT /bin/bash

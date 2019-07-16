FROM ruby:2.6

RUN DEBIAN_FRONTEND=noninteractive && \
apt update && apt -y install lftp && \
rm -rf /var/lib/apt/lists/*

RUN git clone https://git.lug.ustc.edu.cn/iBug/cslab-docs.git /srv/build && \
cd /srv/build && bundle install

ENV LC_ALL C.UTF-8
CMD ["/srv/build/entrypoint.sh"]

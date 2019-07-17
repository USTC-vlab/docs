FROM ruby:2.6

RUN git clone https://git.lug.ustc.edu.cn/vlab/docs.git /srv/build && \
cd /srv/build && bundle install

ENV LC_ALL C.UTF-8
CMD ["/srv/build/entrypoint.sh"]

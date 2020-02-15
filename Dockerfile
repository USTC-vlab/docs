FROM squidfunk/mkdocs-material:latest

RUN git clone https://github.com/USTC-vlab/docs.git /docs

ENV LC_ALL C.UTF-8
ENTRYPOINT ["/bin/sh"]
CMD ["/docs/entrypoint.sh"]

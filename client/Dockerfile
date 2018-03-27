FROM openshift/origin-base:latest
USER root
COPY simple-container-benchmarks /usr/libexec
RUN chmod 777 /usr/libexec/simple-container-benchmarks
USER 1001
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/libexec/simple-container-benchmarks"]

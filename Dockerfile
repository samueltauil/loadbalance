FROM busybox
MAINTAINER Samuel Tauil samuel@redhat.com
ADD ./run.sh ./
EXPOSE 8080
CMD ["./run.sh"]

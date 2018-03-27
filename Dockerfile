FROM openshift/nodejs

# the node dependencies for our node server app
# using caching suggestions per http://bitjudo.com/blog/2014/03/13/building-efficient-dockerfiles-node-dot-js/
ADD ./server/package.json /tmp/package.json
RUN cd /tmp && npm install

# put the shell scripts in place
ADD ./sbin /usr/local/sbin

# our node server app
ADD ./server /server
RUN cp -r /tmp/node_modules /server/.

# expose port 80 for the node server
EXPOSE 8080 5001
CMD ["/usr/local/sbin/simple-container-benchmarks-init"]

FROM fabric8/java-alpine-openjdk7-jre

MAINTAINER Rashmi Naidu, naidur@mskcc.org

# default-jdk needed to run MuTect/GATK
# RUN apt-get update && apt-get install -y default-jdk

# Copy over jar and place in /opt/mutect
RUN mkdir /opt/mutect
COPY muTect-1.1.5.jar /opt/mutect/
COPY wrapper.sh /opt/mutect/

# Set WORKDIR to /data -- predefined mount location.
RUN mkdir /data
WORKDIR /data

ENTRYPOINT ["sh", "/opt/mutect/wrapper.sh"]
CMD ["-h"]

FROM openjdk:7

LABEL maintainer="C. Allan Bolipata (bolipatc@mskcc.org)" \
      version.image="1.0.0" \
      version.mutect="1.1.5" \
      version.java="7" \
      source.mutect="https://github.com/broadinstitute/mutect/releases/tag/1.1.5"

ENV MUTECT_VERSION 1.1.5
COPY runscript.sh /usr/bin/runscript.sh
COPY run_test.sh /run_test.sh
COPY muTect-1.1.5.jar /usr/bin/mutect.jar 

RUN chmod +x /usr/bin/runscript.sh

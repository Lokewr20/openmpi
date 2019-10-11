FROM ubuntu:18.04
Maintainer lokesh
RUN apt update
RUN apt install -y gcc g++ make wget
RUN wget https://download.open-mpi.org/release/open-mpi/v4.0/openmpi-4.0.1.tar.gz
RUN tar -xf openmpi-4.0.1.tar.gz
WORKDIR openmpi-4.0.1
RUN pwd
RUN ./configure;make;make install


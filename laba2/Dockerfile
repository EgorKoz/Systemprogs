FROM ubuntu:18.04
 
COPY laba2.cpp .
COPY laba2.s .

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install gcc-multilib -y
RUN gcc -m32 -fno-pie -no-pie laba2.s -o laba2 -g
RUN g++ laba2.cpp -o l2

CMD ./laba2 && ./l2


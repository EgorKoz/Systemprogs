FROM almalinux

WORKDIR /home/Scrypts

RUN cd /home && mkdir Documents && cd /home/Documents && \
touch file1.txt && touch file2.txt && touch file3.py && \
adduser user1 && adduser user2 && chown user1:user1 /home/Documents/file1.txt && \
chown user1:user1 /home/Documents/file2.txt && chown user2:user2 /home/Documents/file3.py

COPY scrypt.sh /home/Scrypts

RUN cd /home/Scrypts && chmod +x scrypt.sh


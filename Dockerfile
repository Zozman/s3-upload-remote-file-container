FROM ubuntu
RUN apt-get update && apt-get install curl unzip -y
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
COPY run.sh .
CMD ["./run.sh"]
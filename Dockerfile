FROM ubuntu:22.04

# Not asked question.
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 python3-pip \
    r-base wget unzip default-jre \
    && rm -rf /var/lib/apt/lists/*


RUN pip3 install numpy pandas

RUN wget -q https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip \
    && unzip fastqc_v0.12.1.zip -d /opt/ \
    && chmod +x /opt/FastQC/fastqc \
    && ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc

WORKDIR /workspace
CMD ["bash"]

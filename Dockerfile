FROM aphistic/rust-build:stable-linux

RUN apt-get update && \
    apt-get install -y devscripts && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

	

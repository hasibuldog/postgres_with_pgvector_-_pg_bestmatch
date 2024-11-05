FROM postgres:16
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    postgresql-server-dev-16 \
    curl \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo install cargo-pgrx --version 0.12.0-alpha.1
RUN pg_config --version
RUN cargo pgrx init --pg16=/usr/lib/postgresql/16/bin/pg_config
WORKDIR /tmp
RUN git clone --branch v0.8.0 https://github.com/pgvector/pgvector.git
WORKDIR /tmp/pgvector
RUN make
RUN make install
WORKDIR /tmp
RUN git clone https://github.com/tensorchord/pg_bestmatch.rs.git
WORKDIR /tmp/pg_bestmatch.rs
RUN cargo pgrx install --release
RUN rm -rf /tmp/pgvector /tmp/pg_bestmatch.rs
EXPOSE 5432
FROM rocker/r-base:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    && rm -rf /var/lib/apt/lists/*
RUN install.r shiny
RUN echo "local(options(shiny.port = 3838, shiny.host = '0.0.0.0'))" > /usr/lib/R/etc/Rprofile.site
RUN useradd shiny
WORKDIR /srv/shinydir
COPY app .
RUN sudo chown -R shiny:shiny /srv/shinydir
EXPOSE 3838
USER shiny
CMD ["R", "-e", "shiny::runApp('/srv/shinydir')"]

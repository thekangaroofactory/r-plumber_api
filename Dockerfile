FROM rstudio/plumber
LABEL org.opencontainers.image.authors="Docker User <docker@user.org>"

# Install R packages
#RUN R -e 'install.packages(c("data.table", "mlr3", "mlr3misc", "mlr3pipelines"))'

RUN mkdir /R
COPY R/* /R
WORKDIR /R

CMD ["Plumber.R"]

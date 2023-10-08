FROM rstudio/plumber
LABEL org.opencontainers.image.authors="Docker User <docker@user.org>"

# Install R packages
# RUN R -e 'install.packages(c("data.table", "mlr3", "mlr3misc", "mlr3pipelines"))'

# Copy code
RUN mkdir /R
COPY R/* /R
WORKDIR /R

# Define port (Render sets 10000 by default)
EXPOSE 10000

# Run code
CMD ["Plumber.R"]

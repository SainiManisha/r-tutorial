FROM gitpod/workspace-full

USER gitpod

RUN brew install R

RUN python3 -m pip install jupyter

RUN R -e "install.packages('IRkernel', repos='http://cran.us.r-project.org')"
RUN R -e "IRkernel::installspec()"

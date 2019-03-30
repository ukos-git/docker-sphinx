FROM debian:stable

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		dvipng \
		latexmk \
		make \
		python \
		python-pip \
		python-setuptools \
		python-wheel \
		texlive-extra-utils \
		texlive-fonts-recommended \
		texlive-latex-extra \
		texlive-latex-recommended && \
	apt-get clean

RUN pip install \
	pybtex \
	sphinx \
	sphinx-autobuild \
	sphinxcontrib-bibtex \
	sphinxcontrib-fulltoc

#WORKDIR /var/sphinx
#ENTRYPOINT ["/usr/bin/make"]
#CMD ["html"]

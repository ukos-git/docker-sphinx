FROM debian:stable

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		dvipng \
		git \
		latexmk \
		make \
		python3 \
		python3-pip \
		python3-setuptools \
		python3-wheel \
		texlive-extra-utils \
		texlive-fonts-recommended \
		texlive-lang-cyrillic \
		texlive-lang-german \
		texlive-lang-greek \
		texlive-latex-extra \
		texlive-latex-recommended \
		texlive-science && \
	apt-get clean

RUN pip3 install \
	plotly \
	pybtex \
	sphinx \
	sphinx-autobuild \
	git+https://github.com/mcmtroffaes/sphinxcontrib-bibtex.git@develop \
	sphinxcontrib-fulltoc

#WORKDIR /var/sphinx
#ENTRYPOINT ["/usr/bin/make"]
#CMD ["html"]

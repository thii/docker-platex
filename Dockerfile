FROM soleo/latex

# DVI to PostScript converter
RUN apt-get install -qy dvipsk-ja

# Add useful command for building PDF directly from pLaTeX2e source file
ADD pdfplatex /usr/bin/pdfplatex
RUN chmod +x /usr/bin/pdfplatex

# Build command
ADD build /usr/bin/build
RUN chmod +x /usr/bin/build

VOLUME /latex
WORKDIR /latex

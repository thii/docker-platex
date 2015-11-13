# docker-platex

A docker container for pLaTeX, which can be used to build Japanese pLaTeX file.

## Setup

Pull image ([from Docker Hub](https://registry.hub.docker.com/u/thii/platex)):

```bash
docker pull thii/platex
```

or build it yourself:

```bash
docker build -t thii/platex .

```

Add the following alias to your `.bash_profile` or `.zshrc` so you can use the `tex` command to compile pLaTeX file:

```
alias tex="docker run --rm -v `pwd`:/latex thii/platex build"
```

Usage:
-----


```bash
tex example.tex
```

## License

MIT

# personal-docker-library

A collection of docker-images - that may be instatiated to run separate instructions.  
Create one, or many Docker container(s).
  

## Description

Creating Docker images from scratch is _laborious, however the process is worth the effort. :ship:  

*Why?*  

Consider:  

- the runtime of your Docker container  
- implicit security risks  
- size of images  

## Images

| Name                 | Includes |  
| -------------------- | -------- |
| `python-slim-buster` |  Python3, Postgres, Jupyter |  
| `latex-base` (big)   | Ubuntu TexLive distro + (Python Pygments, Gnuplot) |

## Usage

For `python-slim-buster` image:

```bash
# Build image and create container
docker-compose up -d --build
# View the logs
docker-compose logs -f
# Check out localhost:8888 and Jupyter!

```

For `latex-base` image:

```bash
# Build a custom image
docker build -t <your-image-name-here> .
# View new image
docker images
```

:exclamation: Navigate to `latexstart.sh` script.

1. Change IMAGE to 'your-image-name-here' from prior step :point_up_2:

2. In your terminal, run the script. (A bash script for the brave and true)

```bash
find . -name 'latexstart.sh' -type f -exec chmod +x {} \; -exec {} \; 2>/dev/null`
```

>  
```bash
# The script automates the command below as per normal '/bin/bash' scenarios.
docker run --rm -it your-image-name-here:tag-name /bin/bash
```

**Now, you may run the Docker container on your personal machine.**  

---

ToDO: Find proper implementation for Linux SysAdmin & machine.  
(Remember to add USERNAME to the docker group)  
e.g. `sudo usermod -aG docker YOURUSERNAME`  

**
> On certain machines, Docker may not be configured to run from a local profile.  
> ... in other words, Docker is not available to run from the command line.  
> If this is a hinderance to your system workflow, consider using an application that manages
> containers-as-a-service. (Docker Toolbox, Kitematic, Oracle VirtualBox, among others, etc.)

---

ToDO: Add to separate tutorials folder in repository

### Writing with LaTeX  

Is a PDF necessary? What about Markdown? RST?

```bash
# Compile a doc.tex file (ensure you navigate to the current directory of doc.tex file)
docker run --rm -v "$PWD":/usr/src/project -w /usr/src/project pdflatex pdflatex doc.tex

```

Happy Docker-ing! :coffee:

*Wes Oler, 2020*  

|                                                            |
|  --------------------------------------------------------  |
|  :sunrise_over_mountains:  -> :balance_scale:  -> :notes:  |

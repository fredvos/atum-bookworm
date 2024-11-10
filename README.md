# Docker image mokolo-org/atum:bookworm

Base Docker image based on debian:bookworm:

- Latest updates after building
- With locales
- Timezone Europe/Amsterdam

## Name

Atum is the Egyptian creator god, the first god in the Heliopolitan ennead.
In Wikipedia there's a lemma for [Atum](https://en.wikipedia.org/wiki/Atum)

## Inheritance

![Inheritance](doc/inheritance.png)

## Build image

```bash
$ make build
```

## Build images in doc/

- Download a recent MIT licensed version of PlantUML as a .jar file
  and store it in a directory.
  I used ~/share/java/plantuml-mit-1.2024.7.jar for this
- Make sure you have a Java JRE installed;
  in Debian install the 'default-jre-headless' package
  if you have not yet installed a JRE.
- Make sure GraphViz is installed;
  Debian package 'graphviz'.
- Create a bash script ~/.local/bin/plantuml as shown below
- Make the script executable
- In the doc-directory use make images to generate new images after a change

```bash
#! /bin/bash

java -jar ~/share/java/plantuml-mit-1.2024.7.jar $*
```

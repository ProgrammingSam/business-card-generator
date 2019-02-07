Business card generator [![Star this repo](http://githubbadges.com/star.svg?user=ProgrammingSam&repo=business-card-generator&style=flat)](https://github.com/ProgrammingSam/business-card-generator) [![Fork this repo](http://githubbadges.com/fork.svg?user=ProgrammingSam&repo=business-card-generator&style=flat)](https://github.com/ProgrammingSam/business-card-generator/fork) [![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)
===========

Generate a business card in PDF from a LaTeX template file.

Dependencies :
-------------

- ruby;
- ruby gems : rake, yaml, erb;
- pdflatex;

Usage :
-------------

- Edit the config.yaml file with your personnal information;
- Invoke the tasks defined in the rakefile to generate an invoice :

```
rake -T
rake clean            # Remove any temporary products
rake clobber          # Remove any generated file
rake generate         # Generate your business card
```
Feel free to fork and custom.

[![Resume](https://forthebadge.com/images/badges/built-with-love.svg)](https://programmingam.io)

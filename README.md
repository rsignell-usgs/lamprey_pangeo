# Demonstration of Jupyter for ecosystem data

The purpose of this file is to demonstrate how Pangeo may be used with USGS Ecosystem Mission Area (EMA) data and other ecological datasets. 
The example also highlights needs for approaches such as Pangeo to be more widely adapted by USGS scientists, especially those in EMA. 

## Pangeo Binder

The easiest way to use this demo is to use the Pangeo Binder. 
Note these links are for the R examples. 

[![Binder](https://aws-uswest2-binder.pangeo.io/badge_logo.svg)](https://aws-uswest2-binder.pangeo.io/v2/gh/rerickson-usgs/lamprey_pangeo/master?filepath=Example_integrated_data_R.ipynb)

This demo may also be run on [mybinder.org](mybinder.org).

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rerickson-usgs/lamprey_pangeo/master?filepath=Example_integrated_data_R.ipynb)


To run the files locally, see the next section. 

## Overview of files and use

This script requires [Jupyter Notebook](https://jupyter.org/). 
USGS users may use [Pangeo](http://pangeo.chs.usgs.gov/). 
The data comes from [ScienceBase](https://www.sciencebase.gov/) and was part of a MS Thesis examining how eDNA correlates to sea lamprey stocking densities. 
This repository contains the follow files:

- `README.md`: This file
- `LICENCE.md`: A USGS standard license in a markdown file. 
- `Example_integrated_data.ipynb`: The example Jupyter Notebook with Python code
- `Example_integrated_data_R.ipynb`: The example Jupyter Notebook with R code. 
- `environment.yml`: A Conda Environment file.   

To use the examples, open the example notebook and follow along and run the script.
This example is also setup as a Binder. 

## Required user skill set

**Coding:** This example requires the a user to understand how to use Jupyter Notebooks. 
For users who are unfamiliar, many online tutorials exist. 

**Statistics:** This example assumes the user is familiar with basic regression, liner mixed-effect regressions (lmers), and boxplots. 

## Advanced tips

Building an R Environment did not work by default with the binders. 
I was require to use a docker file. 
This maybe built locally using [repo2docker](https://github.com/jupyter/repo2docker).

    jupyter-repo2docker ./


## Contact

Richard A. Erickson (rerickson@usgs.gov)

## Disclaimer 

This software is in the public domain because it contains materials that originally came from the U.S. Geological Survey, an agency of the United States Department of Interior.
For more information, see the [official USGS copyright policy](https://www.usgs.gov/information-policies-and-instructions/copyrights-and-credits).

This software is preliminary or provisional and is subject to revision. It is being provided to meet the need for timely best science. The software has not received final approval by the U.S. Geological Survey (USGS). No warranty, expressed or implied, is made by the USGS or the U.S. Government as to the functionality of the software and related material nor shall the fact of release constitute any such warranty. The software is provided on the condition that neither the USGS nor the U.S. Government shall be held liable for any damages resulting from the authorized or unauthorized use of the software.
This software is provided "AS IS".

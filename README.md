# Facial Blendshapes 

This package contains:
- Data
    - [combined_resultsUpdate.xlsx](combined_resultsUpdate.xlsx)  (Experiment 1: Laboratory)
    - [Main_analysis.csv](Main_analysis.csv) (Experiment 2: online)
- Experiment 1 R/Rmd code 
	- [MIG2020.Rmd](MIG2020.Rmd)  with output [MIG2020.html](MIG2020.html) 
	- [CAG2021.Rmd](CAG2021.Rmd)  with output [CAG2021.html](CAG2021.html)
- Experiment 2 R/Rmd code 
    - [PerceptualExperiment2_example.R](PerceptualExperiment2_example.R)
- publications:  
	- [MIG2020.pdf](MIG2020.pdf)  this paper was awarded *Best Short Paper*  at [MIG2020](https://computing.clemson.edu/vcl/mig2020/)) 
	-  [CAG2021.pdf](CAG2021.pdf) preprint accepted t Computers and Graphics 2021.


These files are associated with the following publications:

> [MIG2020] Investigating perceptually based models to predict importance of facial blendshapes. 
Emma Carrigan, Katja Zibrek, Rozenn Dahyot, and Rachel McDonnell. 2020. 
In Motion, Interaction and Games (MIG '20). Association for Computing Machinery, 
New York, NY, USA, Article 2, 1–6. [DOI:10.1145/3424636.3426904](https://doi.org/10.1145/3424636.3426904)

and

> [CAG2021] Model for predicting perception of facial action unit activation using virtual humans
Rachel McDonnell, Katja Zibrek, Emma Carrigan and Rozenn Dahyot, accepted Computers &  Graphics 2021


Please cite these papers when using this code and data. 
The code is in R and Rmd formats and it can be run with [RStudio](https://www.rstudio.com/) (code has been tested on Windows 10 on RStudio Version 1.3.1093)



Using bibtex format:


```
@article{CAG2021,
title =  {Model for predicting perception of facial action unit activation using virtual humans},
author={Rachel McDonnell, Katja Zibrek, Emma Carrigan and Rozenn Dahyot},
journal = {Computers \& Graphics},
url={},
doi={},
year={accepted 2021},
}

```

```
@inproceedings{10.1145/3424636.3426904,
author = {Carrigan, Emma and Zibrek, Katja and Dahyot, Rozenn and McDonnell, Rachel},
title = {Investigating Perceptually Based Models to Predict Importance of Facial Blendshapes},
year = {2020},
isbn = {9781450381710},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3424636.3426904},
doi = {10.1145/3424636.3426904},
abstract = {Blendshape facial rigs are used extensively in the industry for facial animation of 
virtual humans. However, storing and manipulating large numbers of facial meshes is costly
in terms of memory and computation for gaming applications, yet the relative perceptual 
importance of blendshapes has not yet been investigated. Research in Psychology and Neuroscience
has shown that our brains process faces differently than other objects, so we postulate that 
the perception of facial expressions will be feature-dependent rather than based purely on the 
amount of movement required to make the expression. In this paper, we explore the noticeability
of blendshapes under different activation levels, and present new perceptually based models to
predict perceptual importance of blendshapes. The models predict visibility based on commonly-used 
geometry and image-based metrics. },
booktitle = {Motion, Interaction and Games},
articleno = {2},
numpages = {6},
keywords = {perception, blendshapes, linear model, action units},
location = {Virtual Event, SC, USA},
series = {MIG '20}
}
```

## Author and Repo webpage 

- [Repo Webpage](https://roznn.github.io/facial-blendshapes/)
- [Rozenn Dahyot](https://roznn.github.io/) and [Katja Zibrek](https://cathrin7.github.io/)

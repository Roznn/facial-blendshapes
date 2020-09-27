# Perceptually-based models to predict importance of facial AUs


This package contains  Data and R/Rmd code associated with the following publication:

```
Investigating perceptually-based models to predict importance of facial blendshapes
E. Carrigan, K. Zibrek, R. Dahyot and R. McDonnell, ACM SIGGRAPH conference Motion in Game (MIG2020), USA 2020
```

Please cite this  conference paper when using this code and data.


## Bibtex reference

```


@inproceedings{doiUpcoming,
author = {E. Carrigan, K. Zibrek, R. Dahyot and R. McDonnell},
title = {Perceptually-based models to predict importance of facial AUs},
year = {2020},
isbn = {},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {},
doi = {},
booktitle = {Motion, Interaction and Games},
articleno = {},
numpages = {},
keywords = {},
location = {N. Charleston, SC, United States},
series = {MIG '20}
}

```

## Abstract 


Blendshape facial rigs are used extensively in the industry \cite{lewis2014practice} 
for facial animation of virtual humans. However, storing and manipulating large numbers of facial meshes (blendshapes)
is costly in terms of memory and computation for gaming applications. Blendshape rigs are comprised 
of sets of semantically-meaningful expressions, which govern how expressive the character will be, 
often based on Action Units from FACS~\cite{Ekman:1978}. However, the relative perceptual importance of blendshapes 
has not yet been investigated. Research in Psychology and Neuroscience has shown that our brains process faces differently 
than other objects \cite{bruce2013face, farah1998special, kanwisher1997fusiform} so we postulate that the perception of facial 
expressions will be feature-dependent rather than based purely on the amount of movement required to make the expression.
Therefore, we believe that perception of blendshape visibility will not be reliably predicted by numerical calculations of the difference 
between the expression and the neutral mesh. In this paper, we explore the noticeability of blendshapes under different activation levels, 
and present new perceptually-based models to predict perceptual importance of blendshapes. 
The models predict visibility based on commonly-used geometry and image-based metrics.

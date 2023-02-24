![](vignettes/user_manuals/3D_App_figure/logo.png)

- 3D RNA-seq App v2.0.1 (15/08/2020). 
- Previous versions can be found in <a href='https://github.com/wyguo/ThreeDRNAseq/releases' target='_blank'>https://github.com/wyguo/ThreeDRNAseq/releases</a>

<hr>

**3D RNA-seq is currently under a dual-licensing model.**

- **Open source under GPLV3.0. For academic and non-commercial use, it is free.**
- **Commercial. For commercial use, please get in touch to obtain commercial licenses.** 
<a href="#how-to-get-help">Contact us</a>

<hr>

Table of contents
-----------------

-   [Description](#description)
-   [User group](#user-group)
-   [Prior to 3D RNA-seq](#prior-to-3d-rna-seq)
-   [Capability of 3D RNA-seq](#capability-of-3d-rna-seq)
-   [Run 3D RNA-seq App](#run-3d-rna-seq-app)
    -   [Shiny docker image (no installation)](#shiny-docker-image-no-installation)
-   [How to get help](#how-to-get-help)
-   [Pipeline of 3D RNA-seq App](#pipeline-of-3d-rna-seq-app)
-   [References](#references)

<div align="justify">

Demo video
-----------

To see a demo video, click the screenshot

<a style="float:center" href="https://youtu.be/rqeXECX1-T4" target="_blank">
  <img alt="Youtube video" src="https://github.com/wyguo/ThreeDRNAseq/blob/master/vignettes/user_manuals/3D_App_figure/youtube.png"/>
</a>

Alternative link on Bilibili: <a href="https://www.bilibili.com/video/BV1mS4y1g7uB/ ">https://www.bilibili.com/video/BV1mS4y1g7uB/</a>

<hr>

Description
-----------

The ThreeDRNAseq (3D RNA-seq) R package provides an interactive graphical user interface (GUI) for RNA-seq data analysis using accurate quantification of RNA-seq reads. It allows users to perform differential expression (DE), differential alternative splicing (DAS) and differential transcript usage (DTU) (3D) analyses based on a popular pipeline limma (Ritchie et al., 2015). The 3D RNA-seq GUI is based on R shiny App and enables a complete RNA-seq analysis to be done within only 3 Days (3D). To use our pipeline in your work, please cite:

- Guo,W. et al. (2020) 3D RNA-seq: a powerful and flexible tool for rapid and accurate differential expression and alternative splicing analysis of RNA-seq data for biologists. RNA Biol., DOI: 10.1080/15476286.2020.1858253.
- Calixto,C.P.G., Guo,W., James,A.B., Tzioutziou,N.A., Entizne,J.C., Panter,P.E., Knight,H., Nimmo,H.G., Zhang,R., and Brown,J.W.S. (2018) Rapid and Dynamic Alternative Splicing Impacts the Arabidopsis Cold Response Transcriptome. Plant Cell, 30, 1424–1444.

User group
-----------
To report bugs, leave comments, ask questions and post discussions, please go to:

- Group group: https://groups.google.com/forum/#!forum/3d-rna-seq-app-user-group
- Or Github Issues: https://github.com/wyguo/ThreeDRNAseq/issues

Prior to 3D RNA-seq
-------------------

RNA-seq raw read data is organised by sample. Different samples are either generated by different experimental conditions (multiple genotypes, tissue types or treatments, time-of day circadian experiments) or by biological replication (sometimes also sequencing replication) and each of them is used for the construction of individual libraries. Next, quality control and trimming of the RNA-seq reads should be performed to ensure that high quality RNA-seq reads are used for downstream analysis. The read data are then used for RNA-seq quantification. This step can be performed using many different pipelines, and the type of pipeline determines whether you can use 3D RNA-seq for your downstream expression analyses or not. 3D RNA-seq is only compatible with transcript quantification data derived from Salmon (Patro et al., 2017) or Kallisto (Bray et al., 2016) with the use of a reference transcriptome or Reference Transcript Dataset which contains a list of the known genes and transcripts for the organism under study. The Salmon/Kallisto output file contains the TPM values for each transcript organised by biological repeat and treatment(s). Depending on the size of the dataset, the transcript quantification procedure might take up to 1-2 days.

Capability of 3D RNA-seq
------------------------

The 3D RNA-seq analysis pipeline starts with a number of steps to pre-process the data and reduce noise (e.g. low expression filters based on expression mean-variance trend, visualise data variation, batch effect estimation, data normalisation, etc.). The optimal parameters for each step are determined by quality control plots (e.g. mean-variance trend plots, PCA plots, data distribution plots, etc.). Stringent filters are applied to statistical testing of 3D genes/transcripts to control false positives. After the analysis, publication quality plots (e.g. expression profile plots, heatmap, GO annotation plots, etc.) and reports can be generated. The entire 3D RNA-seq analysis takes only 1 Day or less and all actions are performed by simple mouse clicks on the App.

<a href='#table-of-contents'>Go back to Table of contents</a>

Run 3D RNA-seq App
------------------

### Shiny docker image (no installation)
User manual:
<a href="https://github.com/wyguo/ThreeDRNAseq/blob/master/vignettes/user_manuals/3D_RNA-seq_App_manual.md" target="_blank">https://github.com/wyguo/ThreeDRNAseq/blob/master/vignettes/user_manuals/3D_RNA-seq_App_manual.md</a>

The 3D RNA-seq App docker image is hosted by the James Hutton Institute server. Open the App by this link: <a href="https://ics.hutton.ac.uk/3drnaseq" target="_blank">https://ics.hutton.ac.uk/3drnaseq </a>

**To perform 3D analysis, no installation is required. Users need to upload input data to our server. All results, reports, figures and intermediate data will be zipped and downloaded in the final step.**


<a href='#table-of-contents'>Go back to Table of contents</a>

How to get help
---------------

**3D RNA-seq App "easy-to-use" manual:**

<a href="https://github.com/wyguo/ThreeDRNAseq/blob/master/vignettes/user_manuals" target="_blank">https://github.com/wyguo/ThreeDRNAseq/blob/master/vignettes/user_manuals</a>

**Tooltips:**

In the GUI, users can click tooltips <i style="color: #08088A;" class="fa fa-question-circle fa-lg"></i> in specific steps for help information.

**Contact us:**

3D RNA-seq App is developed and maintained by Dr. Wenbin Guo from Plant Sciences Division, School of Life Sciences, University of Dundee. If you have any questions and suggestions, please contact:

-   Dr. Wenbin Guo: <wenbin.guo@hutton.ac.uk>
-   Dr. Runxuan Zhang: <runxuan.zhang@hutton.ac.uk>

Pipeline of 3D RNA-seq App
--------------------------

![](vignettes/user_manuals/3D_App_figure/pipeline.png)


References
----------

-   Bray,N.L., Pimentel,H., Melsted,P., and Pachter,L. (2016) Near-optimal probabilistic RNA-seq quantification. Nat. Biotechnol., 34, 525–527.
-   Calixto,C.P.G., Guo,W., James,A.B., Tzioutziou,N.A., Entizne,J.C., Panter,P.E., Knight,H., Nimmo,H.G., Zhang,R., and Brown,J.W.S. (2018) Rapid and Dynamic Alternative Splicing Impacts the Arabidopsis Cold Response Transcriptome. Plant Cell, 30, 1424–1444.
-   Guo,W., Tzioutziou,N., Stephen,G., Milne,I., Calixto,C., Waugh,R., Brown,J.W., and Zhang,R. (2019) 3D RNA-seq - a powerful and flexible tool for rapid and accurate differential expression and alternative splicing analysis of RNA-seq data for biologists. bioRxiv, 656686. doi: https://doi.org/10.1101/656686.
-   Patro,R., Duggal,G., Love,M.I., Irizarry,R.A., and Kingsford,C. (2017) Salmon provides fast and bias-aware quantification of transcript expression. Nat. Methods, 14, 417–419.
-   Ritchie,M.E., Phipson,B., Wu,D., Hu,Y., Law,C.W., Shi,W., and Smyth,G.K. (2015) limma powers differential expression analyses for RNA-sequencing and microarray studies. Nucleic Acids Res, 43, e47.
-   Robinson,M.D., McCarthy,D.J., and Smyth,G.K. (2010) edgeR: a Bioconductor package for differential expression analysis of digital gene expression data. Bioinformatics, 26, 139–40.

<a href='#table-of-contents'>Go back to Table of contents</a>

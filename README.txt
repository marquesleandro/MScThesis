# Presentation

This bundle of files make up a LaTeX layout template for 
doctoral thesis written at Graduate Program in Mechanical 
Engineering from State University of Rio de Janeiro.

The first version known was available on the Electrical 
Engineering Department's website: 

- http://www.pel.uerj.br/publico/Modelo_LaTeX_Dissertacao_UERJ.rar
- http://www.pel.uerj.br/defesas/

and dates back 1995. 

Updated versions of this template as well as a dedicated work 
intended to automatize the LaTeX files seem not have been 
evolved since then. 

In 2012, M.Sc. Felipe Marques worked in
the original files in preparation for his masters dissertation 
defense thereby adapting them to the Mechanical Engineering
Program (PPG-EM).  

In 2015, Dr. Gustavo Peixoto de Oliveira modified Marques' files 
and adapted them to comply with the UERJ's library requirements 
for a doctoral thesis. Some improvements have included:

- better kerning space and visual aspect;
- better quality for logos;
- inclusion of a nomenclature section;
- english language support; 
- Greek and Hebrew fonts;

Since anyone of us is a LaTeX professional, many improvements are 
required in these base files. In fact, UERJ lacks an independent 
and powerful LaTeX template for its academic works.

If you are getting this material with less effort, be aware that
others have spent some of their time to bring it to you. Therefore, 
be patient with possible failures and compatibility cases that may 
arise. Also, if you are a "LaTeXist", you are encouraged to 
contribute with bug fixes and optimization. 


Dr. Gustavo Peixoto de Oliveira
Rio de Janeiro, Aug 2016 


# General remarks and guidelines

- Left-aligned equations: option 'fleqn' is MANDATORY to align all the equations at left as UERJ's manual;

- Font encoding: maybe, there might be problems when compiling the text on Mac, 
since the original files com from Windows environments. Files were encoded to utf8 
and something may fail. Please, look at: http://tex.stackexchange.com/questions/110570/characters-with-accents-not-recognized-even-with-inputenc-and-tex-message

- Nomenclature: the package 'nomencl' was pre-loaded to produce nomenclature with 'english' as primary option. Use 'portuguese' for Portuguese title.

- Peer-review style formatting: 'lineno' package adds line numbers to the document and it is activated with '\linenumbers' command. It is useful for correction purposes. In case of numbering only code snippets or pieces of text, do:
```
\begin{linenumbers} (...) 
\end{linenumbers}'. 
```

- Compilation of nomenclature: use the 'MakeIndex'. In texMaker, for instance, you generate it by selecting 'MakeIndex' in the compiler list; then call pdflatex again.

- Compilation: the procedure should work fine by calling in the sequence: pdflatex > makeindex > bibtex > pdflatex > pdflatex (again).


## Guidelines for formatting 
The current template formatting rules was accredited by the CTC/B Library and 
we believe you will not need to modify anything concerning that. 


# Directory Tree

This directory suggests the following organisation:

uerj-dsc-template-en
|
|
(* style files *)
abnt-num.bst
afterpage.sty
epic.sty
indentfirst.sty
pagina.sty
psfig.sty
setspace.sty
|
|
(* class file *)
uerj.cls

|
|
(* main file *)
main.tex
|
|
(* bibTeX file *)
refs.bib
|
|
|--- logos/
|      | 
|      |    (* cover logos *)
|      |--- logo_uerj_bw.png
|      |--- logo_uerj_mark.png
|
|
|--- figs/
|      |
|      |--- chap1/
|      |      |  
|      |      | (* figures for chapter 1)    
|      |
|      | 
|      |--- chap2/
|             |  
|             | (* figures for chapter 2)    
|      .
|      .
|      .
|
|
|
|--- 00_pre/
|      |
|      |
|      |(* pre-textual elements; in order of compilation *) 
|      |    
|      |---  1cover.tex       
|      |---  2titlePage.tex       
|      |---  3catalogSheet.tex       
|      |---  4approvalSheet.tex       
|      |---  5dedication.tex       
|      |---  6acks.tex       
|      |---  7epigraph.tex       
|      |---  8abstract_pt.tex       
|      |---  9abstract_en.tex       
|      |--- 10nomenclature.tex (optional)      
|
|--- 01_intro/
|      |
|      |
|      |--- (* separated introduction .tex file *) 
|
|--- 02_chaps/
|      |
|      |
|      |--- (* separated chapter .tex files *) 
|
|--- 03_chaps/
|      |
|      |
|      |--- (* separated conclusion .tex file *) 
|
|--- 04_apps/
|      |
|      |
|      |--- (* separated appendix .tex files *) 


# TODO

- Develop new .cls file with automatic definitions (newcommands, etc.);
- Clean main.tex file;
- Add makefile to compile via command line and wipe out files;

# Contact

- If you got to improvement or were aware of updates concerning 
a new template for academic works at UERJ, please contact: 

Dr. Gustavo Peixoto de Oliveira: gustavo.oliveira@uerj.br
Dr. Gustavo Rabello dos Anjos: gustavo.anjos@uerj.br 





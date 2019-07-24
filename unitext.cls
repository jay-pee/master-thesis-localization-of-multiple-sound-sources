\NeedsTeXFormat{LaTeX2e}
% \ProvidesClass{unitext}[2011/08/01 v1.9 unitext, Werner Struckmann und Institut für Nachrichtentechnik]

\RequirePackage[utf8]{inputenc}
\RequirePackage{ifthen}
\RequirePackage[T1]{fontenc}
\DeclareUnicodeCharacter{2011}{\-}	%Wird aus kompaitibilitätsgründen für BIBER benötigt

\newcommand{\@subjekt}{}
\newcommand{\@institut}{}
\newcommand{\@bib}{plain}
\newcommand{\@din}{din}
\newcommand{\@bibstyle}{}
\newcommand{\@sprache}{}
\newcommand{\@logo}{\includegraphics[scale=0.11]{layout/tu-logo}}
\newcommand{\LoadPicture}{layout/IfN_Logo}


\DeclareOption{dissertationv}{%
  \renewcommand{\@subjekt}{Dissertation}%
  \AtBeginDocument{\renewcommand{\maketitle}{\input{titelseite-vorher}}}%
}
\DeclareOption{dissertationn}{%
  \renewcommand{\@subjekt}{Dissertation}%
  \AtBeginDocument{\renewcommand{\maketitle}{\input{titelseite-nachher}}}%
}

\DeclareOption{titelseite}{\AtBeginDocument{\renewcommand{\titelblatt}{\input{layout/titelseite}}}}
\DeclareOption{cd}{\AtBeginDocument{\renewcommand{\titelblatt}{\input{layout/cd}}}}



\DeclareOption{abbrv}{\renewcommand{\@bib}{abbrv}}
\DeclareOption{alpha}{\renewcommand{\@bib}{alpha}}
\DeclareOption{plain}{\renewcommand{\@bib}{plain}}
\DeclareOption{unsrt}{\renewcommand{\@bib}{unsrt}}


\newboolean{useEnglish}
\setboolean{useEnglish}{false} %Zuweisung
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% ENGLISH DEFINITIONS
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
\DeclareOption{english}{%
	
	\setboolean{useEnglish}{true} %Zuweisung
	
	\DeclareOption{bachelorarbeit}{\renewcommand{\@subjekt}{Bachelor Thesis}}
	\DeclareOption{projektarbeit}{\renewcommand{\@subjekt}{Project}}
	\DeclareOption{masterarbeit}{\renewcommand{\@subjekt}{Master Thesis}}
	\DeclareOption{seminar}{\renewcommand{\@subjekt}{Seminar Lecture}}
	\DeclareOption{praktikum}{\renewcommand{\@subjekt}{Internship Report}}
	\DeclareOption{teamprojekt}{\renewcommand{\@subjekt}{Team Project}}
	\DeclareOption{studienarbeit}{\renewcommand{\@subjekt}{Seminar Paper}}
	\DeclareOption{diplomarbeit}{\renewcommand{\@subjekt}{Thesis}}
	\DeclareOption{bericht}{\renewcommand{\@subjekt}{Report}}
	\DeclareOption{script}{\renewcommand{\@subjekt}{Script}}
	\DeclareOption{diss}{\renewcommand{\@subjekt}{Dissertation}}
	
	
	\DeclareOption{inf}{\renewcommand{\@institut}{Institute of Computer Science}}
	\DeclareOption{ifn}{\renewcommand{\@institut}{Institute for Communications Technology\\ Schleinitzstraße 22 $\cdot$ 38106 Braunschweig}}
	\DeclareOption{ips}{\renewcommand{\@institut}{Institute for Programming and Reactive Systems}}
	\DeclareOption{idb}{\renewcommand{\@institut}{Institut für Informationssysteme}}
	\DeclareOption{ida}{\renewcommand{\@institut}{Institute of Computer and Network Engineering}}
	\DeclareOption{iti}{\renewcommand{\@institut}{Institute of Theoretical Computer Science}}
	\DeclareOption{eis}{\renewcommand{\@institut}{Institute of Software Engineering and Automotive Informatics}}
	
	\AtEndOfClass{%
	    \RequirePackage[left]{eurosym}
	}
	
	\AtBeginDocument{%
		    %\renewcommand{\keywordsname}{Keywords}
		    \renewcommand{\glossaryname}{Glossary}
		    \renewcommand{\symbolname}{Symbols}
		    \renewcommand{\abkuerzungname}{List of Abbreviations}


		    \renewcommand{\zahlname}{Numbers}
		    \renewcommand{\@bibstyle}{\@bib}
			\let\datum\@date
			\hypersetup{%
				pdftitle={\@title},
			  	pdfauthor={\@author},
			  	pdfsubject={\@subject},
			  	pdfcreator={\LaTeX{} with local class \dq{}unitext\dq{}
			  		(based on \dq{}scrreprt\dq) and package \dq{}hyperref\dq},
			  }
			\InputIfFileExists{layout/tu_bs_colors}{}{}
		    \selectlanguage{english}
	}
}
	
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
% GERMAN DEFINITIONS
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
\DeclareOption{german}{%
	\DeclareOption{bachelorarbeit}{\renewcommand{\@subjekt}{Bachelorarbeit}}
	\DeclareOption{projektarbeit}{\renewcommand{\@subjekt}{Projektarbeit}}
	\DeclareOption{masterarbeit}{\renewcommand{\@subjekt}{Masterarbeit}}
	\DeclareOption{seminar}{\renewcommand{\@subjekt}{Ausarbeitung eines Seminarvortrags}}
	\DeclareOption{praktikum}{\renewcommand{\@subjekt}{Praktikumsbericht}}
	\DeclareOption{teamprojekt}{\renewcommand{\@subjekt}{Teamprojekt}}
	\DeclareOption{studienarbeit}{\renewcommand{\@subjekt}{Studienarbeit}}
	\DeclareOption{diplomarbeit}{\renewcommand{\@subjekt}{Diplomarbeit}}
	\DeclareOption{bericht}{\renewcommand{\@subjekt}{Informatik-Bericht}}
	\DeclareOption{script}{\renewcommand{\@subjekt}{Vorlesungsskript}}
	\DeclareOption{diss}{\renewcommand{\@subjekt}{Dissertation}}
	
	\DeclareOption{inf}{\renewcommand{\@institut}{Institute für Informatik}}
	\DeclareOption{ifn}{\renewcommand{\@institut}{Institut für Nachrichtentechnik\\ Schleinitzstraße 22 $\cdot$ 38106 Braunschweig}}
	\DeclareOption{ips}{\renewcommand{\@institut}{Institut für Programmierung und Reaktive Systeme}}
	\DeclareOption{idb}{\renewcommand{\@institut}{Institut für Informationssysteme}}
	\DeclareOption{ida}{\renewcommand{\@institut}{Institut für Datentechnik und Kommunikationsnetze}}
	\DeclareOption{iti}{\renewcommand{\@institut}{Institut für Theoretische Informatik}}
	\DeclareOption{eis}{\renewcommand{\@institut}{Institut für Theoretische Informatik\\%
			Abteilung Entwurf Integrierter Schaltungen}}
	
	\AtEndOfClass{%
	    \RequirePackage[right]{eurosym}
		 }
		 
	\AtBeginDocument{%
		    \renewcommand{\@bibstyle}{\@bib\@din}
		
			\let\datum\@date
			\hypersetup{%
				  	pdftitle={\@title},
				  	pdfauthor={\@author},
				  	pdfsubject={\@subject},
				  	pdfcreator={\LaTeX{} with local class \dq{}unitext\dq{}
				  		(based on \dq{}scrreprt\dq) and package \dq{}hyperref\dq},
			}
			\InputIfFileExists{layout/tu_bs_colors}{}{}
			\selectlanguage{german}
	}
}

\DeclareOption{pdf}{%
  \AtEndOfClass{%
   \RequirePackage[pdftex]{color}
   \RequirePackage[pdftex]{graphicx}   
   \RequirePackage[pdftex,plainpages=false,pdfpagelabels,bookmarksnumbered,
     colorlinks,urlcolor=black,linkcolor=black,citecolor=black]{hyperref}
   \pdfstringdefDisableCommands{\let\and~}
  }
}

\DeclareOption{ps}{%
  \AtEndOfClass{%
   \RequirePackage[dvips]{color}
   \RequirePackage[dvips]{graphicx}   
   \RequirePackage[dvips,pagebackref,plainpages=false,pdfpagelabels,bookmarksnumbered,
     colorlinks,urlcolor=black,linkcolor=black,citecolor=black]{hyperref}
  }
}

\DeclareOption{dvi}{%
  \AtEndOfClass{%
   \RequirePackage[xdvi]{color}
   \RequirePackage[xdvi]{graphicx}   
   \RequirePackage[hypertex,pagebackref,plainpages=false,pdfpagelabels,bookmarksnumbered,
     colorlinks,urlcolor=black,linkcolor=black,citecolor=black]{hyperref}
  }
}

\ExecuteOptions{inf,plain}
\ProcessOptions\relax

\LoadClass[a4paper,12pt,twoside,DIV=12,BCOR=15mm,final]{scrreprt}
\KOMAoptions{abstract=on,cleardoublepage=empty,numbers=noenddot,%
  headsepline=false,headings=normal,listof=totoc,index=totoc,%
  bibliography=totoc,parskip=half,pagesize=pdftex}
% \setkomafont{pagehead}{\sffamily\bfseries}

\RequirePackage[backend=biber,style=alphabetic,maxnames=4,minnames=3,backref=false,
abbreviate=false]{biblatex}

\RequirePackage{textcomp}
\RequirePackage{lmodern}

\RequirePackage[load-configurations=binary,binary-units=true]{siunitx}

\RequirePackage{amssymb}
\RequirePackage{amsmath}

\RequirePackage[printonlyused]{acronym}					
\RequirePackage{makeidx}
\RequirePackage{multicol}
\RequirePackage{ifthen}
\RequirePackage{xspace}
%\RequirePackage[thinspace,thinqspace,squaren,textstyle]{SIunits}

\RequirePackage[english, ngerman]{babel}
\RequirePackage{csquotes}

\RequirePackage{subfig} % Allow more options to set figures

\RequirePackage{hhline}						% Lines in tables
\RequirePackage{booktabs} 					% Enhance the quality of tables
\RequirePackage{multirow}					% Special columns and rows

\RequirePackage{microtype}

\RequirePackage{caption}
%\RequirePackage[hypcap=true]{subcaption} % removed due to compatibility issues with subfig
\RequirePackage{ifsym}
\RequirePackage{microtype}
\RequirePackage{ellipsis}

\renewcommand*{\partpagestyle}{empty}
\renewcommand*{\chapterformat}{\chapappifchapterprefix{\ }\thechapter\enskip}

\newcommand{\@uni}{{\sffamily\bfseries%
\makebox[\textwidth]{TECHNISCHE UNIVERSITÄT CAROLO-WILHELMINA ZU BRAUNSCHWEIG}}}

\titlehead{%
  \hfill\@uni\hfill
  \pdfbookmark[0]{Titel}{titelblatt}
}

\newcommand{\@nummer}{}
\newcommand{\nummer}[1]{\renewcommand{\@nummer}{~#1}}

\renewcommand*{\subject@font}{\normalfont\normalcolor\mdseries\Large}
\subject{{\@subjekt\@nummer}}

\newcommand\titelblatt{{\sffamily\maketitle}}

\newcommand{\@dozent}{}
\newcommand{\dozent}[1]{\renewcommand{\@dozent}{#1}}

\newcommand{\@betreuer}{}
\newcommand{\betreuer}[2][betreut durch:]{%
  %\renewcommand{\@betreuer}{#1\par#2}
  \renewcommand{\@betreuer}{#2}
}

\newcommand{\@matrikelnummer}{}
\newcommand{\matrikelnummer}[1]{\renewcommand{\@matrikelnummer}{#1}}

\publishers{%
  \enlargethispage{10mm}
  \vskip08mm\@logo\par
  {\sffamily\normalsize\vskip15mm\@institut\par\@dozent\par\vskip08mm\@betreuer}
}

\newcommand{\erklaerungname}{Eidesstattliche Erklärung}%Eigenständigkeitserklärung
\newcommand{\erklaerung}{%
  \cleardoublepage
  \pagenumbering{roman}
  \pdfbookmark[0]{\erklaerungname}{erklaerungname}
  \thispagestyle{empty}
  \hskip 0mm
  \vfill
  \begin{center}\sffamily\bfseries\large
    \erklaerungname
  \end{center}
  \bigskip\noindent 
  \InputIfFileExists{helper/01-erklaerung}{}{}
	\begin{minipage}[t]{0.5\textwidth}
		\hfill
	\end{minipage}
	\begin{minipage}[t]{0.5\textwidth}
		\begin{center}
			\hrulefill\\
			\makeatletter\@author\makeatother
		\end{center}
	\end{minipage}
}

%\renewcaptionname{ngerman}{\contentsname}{Inhaltsverzeichnis}
\let\orig@toc\tableofcontents
\newcommand{\my@toc}{%
  \cleardoublepage
  \pdfbookmark[0]{\contentsname}{contentsname}
  \orig@toc
}
\let\tableofcontents\my@toc

\newcommand{\abkuerzungname}{Verzeichnis der Abkürzungen}

\newcommand{\abkuerzung}{%
  \newpage
  \chapter*{\abkuerzungname}
  \markboth{\abkuerzungname}{\abkuerzungname}
  \addcontentsline{toc}{chapter}{\abkuerzungname}
  \InputIfFileExists{helper/04-abkuerzung}{}{}
}



\newcommand{\starttext}{%
  \cleardoublepage
  \pagenumbering{arabic}
}

%\renewcaptionname{ngerman}{\appendixname}{Anhang}
\newcommand{\anhang}{%
  \begin{appendix}
    \InputIfFileExists{helper/05-anhang}{}{}
  \end{appendix}
}

%\bibliographystyle{\@bibstyle}
%\renewcaptionname{ngerman}{\bibname}{Literatur}

\newcommand{\glossaryname}{Glossar}
\newenvironment{theglossary}
  {\chapter*{\glossaryname}
   \markboth{\glossaryname}{\glossaryname}
   \addcontentsline{toc}{chapter}{\glossaryname}
   \setlength{\parindent}{0pt}
   \setlength{\parskip}{0pt plus 0.4pt}
   \begin{description}}
  {\end{description}}
\newcommand{\glossar}[2]{\glossary{[#1]\quad#2|hyperpage}}
\newcommand{\printglossary}{\@input@{\jobname.gls}}

\newcommand{\symbolname}{Symbole}
\newcommand{\zahlname}{Zahlen}
%\renewcaptionname{ngerman}{\indexname}{Sachwortregister}
\renewenvironment{theindex}
  {\chapter*{\indexname}
   \markboth{\indexname}{\indexname}
   \addcontentsline{toc}{chapter}{\indexname}
   \vspace*{-10pt}
   \setlength{\parindent}{0pt}
   \setlength{\parskip}{0pt plus 0.4pt}
   \setlength{\columnsep}{35pt}
   \setlength{\columnseprule}{0.0pt}
   \renewcommand{\item}{\@idxitem}
   \begin{multicols}{2}}
  {\end{multicols}}

\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\labelenumi}{\theenumi.}
\renewcommand{\labelenumii}{\theenumii)}
\renewcommand{\labelitemi}{\scriptsize$\blacksquare$} % alligned to power point template
\renewcommand{\labelitemii}{\scriptsize$\square$} % alligned to power point template

\DeclareRobustCommand{\xdot}{\@ifnextchar.{}{.\xspace}}

\pagestyle{headings}
\pagenumbering{roman}

\InputIfFileExists{unitext.cfg}{}{}
\InputIfFileExists{helper/glossar.tex}{}{}

%\setlength{\overfullrule}{4pt}

\raggedbottom

\ifthenelse{\boolean{useEnglish}}{\AtBeginDocument{\selectlanguage{english}}}{\AtBeginDocument{\selectlanguage{german}}}


	
\endinput

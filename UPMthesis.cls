%%
%% This is file `UPMthesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Modified by Francisco Suarez-Ruiz: www.romin.upm.es/fsuarez

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{UPMthesis}
              [2014/01/01 v2.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\hyphenpenalty=9999               % Reduce number of hyphenations
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter . \space #1}\markboth{\@chapapp\ \thechapter . #1}{\@chapapp\ \thechapter . #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}
  \thispagestyle{empty}
  \newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%~ \renewcommand\mainmatter{%
  %~ \clearpage
  %~ \@mainmattertrue
  %~ \pagenumbering{arabic}}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
%~ \theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[small]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~(\ref{#1})}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\newcommand{\mref}[1]{Algorithm~\ref{#1}}
\newcommand{\dref}[1]{Definition~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{subcaption}
\usepackage{booktabs}
\usepackage{multirow}
\usepackage{rotating}
\usepackage{listings}
\usepackage[T1]{fontenc}
\usepackage[english]{babel}
\usepackage{textcomp}
\usepackage{gensymb}  %For degrees symbol

\addto\captionsspanish{\def\contentsname{Contents}}
\addto\captionsspanish{\def\listfigurename{List of Figures}}
\addto\captionsspanish{\def\listtablename{List of Tables}}
\addto\captionsspanish{\def\bibname{References}}
\addto\captionsspanish{\def\figurename{Figure}}
\addto\captionsspanish{\def\tablename{Table}}
\addto\captionsspanish{\def\chaptername{Chapter}}
\addto\captionsspanish{\def\appendixname{Appendix}}
\addto\captionsspanish{\def\appendixtocname{Appendix}}
\addto\captionsspanish{\def\appendixpagename{Appendix}}
\addto\captionsspanish{\def\partname{Part}}
\newcommand\listnomenclature{Nomenclature}
\newcommand\listsymbolname{Terms and Definitions}
\newcommand\listconstants{Constants}

\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\superdegree}[1]{\def\supdegree{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\authordegree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\program}[1]{\def\prgname{#1}}
\newcommand*{\PROGRAM}[1]{\def\PRGNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\president}[1]{\def\presidentname{#1}}
\newcommand*{\secretary}[1]{\def\secretaryname{#1}}
\newcommand*{\vocalA}[1]{\def\vocalAname{#1}}
\newcommand*{\vocalB}[1]{\def\vocalBname{#1}}
\newcommand*{\vocalC}[1]{\def\vocalCname{#1}}
\newcommand*{\surrogateA}[1]{\def\surrogateAname{#1}}
\newcommand*{\surrogateB}[1]{\def\surrogateBname{#1}}
\supervisor   {}
\superdegree  {}
\examiner     {}
\authors      {}
\authordegree {}
\president    {}
\secretary    {}
\vocalA       {}
\vocalB       {}
\vocalC       {}
\surrogateA     {}
\surrogateB     {}
\university  {\texorpdfstring{\href{http://www.upm.es}
                {Universidad Polit\'{e}cnica de Madrid}}
                {Universidad Polit\'{e}cnica de Madrid}}
\UNIVERSITY  {\texorpdfstring{\href{http://www.upm.es}
                {UNIVERSIDAD POLIT\'{E}CNICA DE MADRID}}
                {UNIVERSIDAD POLIT\'{E}CNICA DE MADRID}}
\department  {\texorpdfstring{\href{http://www.disam.upm.es/}
                {Departamento de Autom\'{a}tica, Ingenier\'{i}a Electr\'{o}nica e Inform\'{a}tica Industrial}}
                {Departamento de Autom\'{a}tica, Ingenier\'{i}a Electr\'{o}nica e Inform\'{a}tica Industrial}}
\DEPARTMENT  {\texorpdfstring{\href{http://www.disam.upm.es/}
                {DEPARTAMENTO DE AUTOM\'{A}TICA, INGENIER\'{I}A ELECTR\'{O}NICA E INFORM\'{A}TICA INDUSTRIAL}}
                {DEPARTAMENTO DE AUTOM\'{A}TICA, INGENIER\'{I}A ELECTR\'{O}NICA E INFORM\'{A}TICA INDUSTRIAL}}
\group       {\texorpdfstring{\href{http://www.romin.upm.es/es/}
                {Grupo de Robots y Maquinas Inteligentes}}
                {Grupo de Robots y Maquinas Inteligentes}}
\GROUP       {\texorpdfstring{\href{http://www.romin.upm.es/es/}
                {GRUPO DE ROBOTS Y MAQUINAS INTELIGENTES}}
                {GRUPO DE ROBOTS Y MAQUINAS INTELIGENTES}}
\faculty     {\texorpdfstring{\href{http://www.etsii.upm.es/}
                {Escuela T\'{e}cnica Superior de Ingenieros Industriales}}
                {Escuela T\'{e}cnica Superior de Ingenieros Industriales}}
\FACULTY     {\texorpdfstring{\href{http://www.etsii.upm.es/}
                {ESCUELA T\'{E}CNICA SUPERIOR DE INGENIEROS INDUSTRIALES}}
                {ESCUELA T\'{E}CNICA SUPERIOR DE INGENIEROS INDUSTRIALES}}
\program     {Automation and Robotics}
\PROGRAM     {AUTOMATION AND ROBOTICS}

\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\LARGE\textbf{\UNIVNAME}\par}
      {\large{\FACNAME}\par} 
      \bigskip
      \vfill
      \setlength{\baselineskip}{25pt}   
      {\huge \bf \MakeUppercase{\@title} \par}
      \vfill
      {\LARGE \bf\MakeUppercase{Doctor of Philosophy}}\par
      \medskip
      {\Large\textbf{\PRGNAME}\par}
      \vfill
      \MakeUppercase{\LARGE \authornames} \par
      {\large \degreename \par}
      \vfill
      {\Large \@date \par}
      \bigskip
    \end{center}
    \cleardoublepage
    \thispagestyle{empty}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\Large\textbf{\DEPTNAME}\par}
      {\large \FACNAME \par}
      \bigskip
      \vfill
      \setlength{\baselineskip}{25pt}  
      \MakeUppercase{\huge \bf \MakeUppercase{\@title}}\par
      \bigskip
      \bigskip
      \bigskip
      \bigskip
      \vfill
      {\LARGE \bf\MakeUppercase{Doctor of Philosophy}}\par
      \bigskip
      \bigskip
      \vfill
      \Large
      \begin{singlespace}
        \begin{tabular}{ll}
          \textbf{Author:}  & \authornames          \\
                            & \textit {\degreename} \\
                            &                       \\
          \textbf{Advisor:} & \supname              \\
                            & \textit {\supdegree}  \\
        \end{tabular}
      \end{singlespace}
      \vfill
      \vfill
      \bigskip
      \bigskip
      {\Large \@date} \par
      \bigskip
    \end{center}
    \cleardoublepage
    \thispagestyle{empty}
    \null\vfil
    \vskip 60\p@
    % Jury Page
    \begin{center}
      \setlength{\parskip}{0pt}
      \setlength{\baselineskip}{25pt}  
      \MakeUppercase{\huge \bf \MakeUppercase{\@title}}\par
      \bigskip\bigskip
      \Large
      \textbf{Author:} \authornames
    \end{center}
    \bigskip\vfill
    \Large
    \begin{doublespace}
      \setlength{\tabcolsep}{5mm}
      \begin{tabular}{ll}
        \textbf{Tribunal:} & \\ [5mm]
        Presidente:   &   \presidentname \\
        Secretario:   &   \secretaryname \\
          Vocal A:    &   \vocalAname \\
          Vocal B:    &   \vocalBname \\
          Vocal C:    &   \vocalCname \\
          Suplente A: &   \surrogateAname \\
          Suplente B: &   \surrogateBname \\
      \end{tabular}
    \end{doublespace}
    \bigskip\vfill
    Acuerdan otorgar la calificaci\'{o}n de:
    \bigskip\vfill
    \centering{\Large Madrid, \hspace{20mm} de \hspace{50mm} de \@date} \par
    \bigskip
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

\renewcommand\tableofcontents{
\btypeout{\contentsname}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \addtotoc{\contentsname}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}

\renewcommand\listoffigures{
\btypeout{\listfigurename}
\addtotoc{\listfigurename}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

\renewcommand\listoftables{
\btypeout{\listtablename}
\addtotoc{\listtablename}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newenvironment{acknowledgements}
{
  \btypeout{Acknowledgements}
  \addtotoc{Acknowledgements}{\vspace{1em}}
  \chapter*{Acknowledgements}
}
{
  \par\vfil\null
  \cleardoublepage
}

\newenvironment{abstract}
{
  \btypeout{Abstract}
  \addtotoc{Abstract}{\vspace{1em}}
  \chapter*{Abstract}
}
{
  \par\vfil\null
  \cleardoublepage
}

\newenvironment{resumen}
{
  \btypeout{Resumen}
  \addtotoc{Resumen}{\vspace{1em}}
  \chapter*{Resumen}
}
{
  \par\vfil\null
  \cleardoublepage
}

\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{flushright}{\Large \sl #1}\end{flushright}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `UPMthesis.cls'

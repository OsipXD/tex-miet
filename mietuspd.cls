\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mietuspd} [2018/03/03 MIET USPD document]

\LoadClass[a4paper,onecolumn]{extarticle}

\RequirePackage{setspace}
\RequirePackage{polyglossia}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{chngcntr}
\RequirePackage[top=2.5cm,right=1cm,bottom=1.5cm,left=2cm]{geometry}

%% Lang and font settings
\setdefaultlanguage{russian}
\defaultfontfeatures{Mapping=tex-text, Scale=MatchLowercase}
\newcommand{\rmfont}{Times New Roman}
\newfontfamily{\cyrillicfont}{\rmfont}
\setmainfont{\rmfont}
\PolyglossiaSetup{russian}{indentfirst=true}

%% Space sizes
\setlength{\unitlength}{1mm}
\onehalfspacing
\setlength{\parindent}{1.25cm}
\setlength{\headsep}{1.25cm}
\newlength{\sepspace}
\setlength{\sepspace}{5pt}

%% Headers
\setcounter{secnumdepth}{4}
\titleformat{\section}%
	{\centering\bf\large\uppercase}%
	{\thesection}%
	{\sepspace}{}
\titleformat{\subsection}%
	{\bf\large}%
	{\thesubsection}%
	{\sepspace}{}
\titlespacing{\subsection}%
    {\parindent}%
    {*1}{*1}
\titleformat{\paragraph}
    {\bf}%
    {\theparagraph}%
    {\sepspace}{}

%% List style
\setlist{noitemsep, leftmargin=*}
\setlist[1]{labelindent=\parindent}
\setlist[itemize,1]{label=--}

%% Tables style
\counterwithin{table}{section}

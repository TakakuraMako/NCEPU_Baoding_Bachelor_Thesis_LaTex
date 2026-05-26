\ProvidesClass{NCEPU-thesis}

\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{book}
}
\ProcessOptions\relax
\LoadClass[12pt, openany]{book}

\RequirePackage{ifxetex}
\RequireXeTeX

\RequirePackage[dvipsnames,svgnames,table]{xcolor}
\RequirePackage{graphicx}
\RequirePackage[font={doublespacing, small}, labelsep=space, skip=6pt]{caption}

\RequirePackage{array}
\RequirePackage{booktabs}
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\arrayrulewidth}{0.5pt}

\RequirePackage{setspace}
\RequirePackage{multirow}
\RequirePackage[tbtags]{amsmath}
\RequirePackage{commath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage[nopostdot]{glossaries}
\RequirePackage{mathspec}
\RequirePackage{pdfpages}
\RequirePackage{siunitx}

\RequirePackage{xeCJK}
\RequirePackage{ifplatform}

\RequirePackage{blindtext}
\RequirePackage{upgreek}
\RequirePackage{pifont}

\setCJKmainfont[Path=Thesis_Materials/Fonts/,Extension=.TTC,AutoFakeBold=true,AutoFakeSlant=true]{SIMSUN}
\setCJKmonofont[Path=Thesis_Materials/Fonts/,Extension=.TTC,AutoFakeBold=true,AutoFakeSlant=true]{SIMSUN}
\newCJKfontfamily{\heiti}[Path=Thesis_Materials/Fonts/,Extension=.TTF]{SIMHEI}
\newfontfamily{\heiti@letter}{Times New Roman}
\newCJKfontfamily{\kaiti}[Path=Thesis_Materials/Fonts/,Extension=.TTF,AutoFakeBold=true]{STKAITI}
\newfontfamily{\kaiti@letter}{Times New Roman}
\newCJKfontfamily{\songti}[Path=Thesis_Materials/Fonts/,Extension=.TTC,AutoFakeBold=true,AutoFakeSlant=true]{SIMSUN}
\newfontfamily{\songti@letter}{Times New Roman}
\setallmainfonts{Times New Roman}

\DeclareMathAlphabet{\mathbf}{\eu@enc}{\eu@mathrm}{bx}{it}
\newcommand{\bm}{\mathbf}

\RequirePackage{zhnumber}
\RequirePackage{datetime2}
\RequirePackage{pifont}

\bibliographystyle{Thesis_Materials/GBT7714-2005}

\RequirePackage[hyphens]{xurl}
\RequirePackage[hyperfootnotes=false,
    bookmarksnumbered,
    bookmarksdepth=4
]{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  linkcolor=black,
  urlcolor=black
}

\RequirePackage{indentfirst}
\RequirePackage{calc}
\RequirePackage{float}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{appendix}
\RequirePackage{setspace}
\RequirePackage{cite}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}

\RequirePackage[algochapter, boxruled, linesnumbered]{algorithm2e}

\RequirePackage{etoolbox}
\RequirePackage{xpatch}
\RequirePackage{newfloat}
\RequirePackage[resetlabels]{multibib}
\RequirePackage[nottoc]{tocbibind}
\@ifundefined{AddToHook}{%
  \RequirePackage{everypage}%
  \newcommand{\NCEPUAddEverypageHook}[1]{\AddEverypageHook{#1}}%
}{%
  \newcommand{\NCEPUAddEverypageHook}[1]{\AddToHook{shipout/before}{#1}}%
}%
\RequirePackage{pdfpages}
\RequirePackage{emptypage}

\graphicspath{{./Figures/}}

\RequirePackage[titles]{tocloft}
\RequirePackage[labelformat=simple]{subcaption}
\captionsetup[sub]{font=small, belowskip=6pt}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\newcommand{\floatcontinue}{\end{figure}\clearpage\begin{figure}[tb]\ContinuedFloat}

\urlstyle{rm}
\raggedbottom

\newcommand{\thesistablelist}{
  \listoftables
}

\RequirePackage[a4paper,
  inner=2.5cm, outer=2cm, top=2.5cm, bottom=2cm,
  bindingoffset=0cm]{geometry}

\setlength{\headheight}{15pt}

\pagestyle{fancy}
\linespread{1.391}
\setlength\parindent{24pt}
\titlespacing{\chapter}{0pt}{-16pt}{18pt}
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

\renewcommand\thechapter{第\arabic{chapter}章}
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}

\captionsetup{format=hang}
\captionsetup{width=\textwidth - 42pt}
\captionsetup[figure]{aboveskip=6pt, belowskip=0pt}
\captionsetup[table]{aboveskip=6pt, belowskip=0pt}

\setlength{\intextsep}{9pt}

\AtBeginEnvironment{figure}{
  \def\@floatboxreset{\centering}
}

\AtBeginEnvironment{table}{
  \def\@floatboxreset{\centering}
}

\AtBeginEnvironment{tabular}{\small}

\newcommand{\chinesecolon}{\char"FF1A}
\newcommand{\chinesespace}{\char"3000}
\newcommand{\chineseperiod}{\char"3002}
\newcommand{\chinesequestion}{\char"FF1F}
\newcommand{\chineseexclamation}{\char"FF01}
\newcommand{\chinesecomma}{\char"FF0C}
\newcommand{\chinesesemicolon}{\char"FF1B}
\newcommand{\chineseleftparenthesis}{\char"FF08}
\newcommand{\chineserightparenthesis}{\char"FF09}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\RequirePackage{geometry}

\titleformat{\chapter}[block]
  {\centering\fontsize{18pt}{18pt}\heiti\selectfont\strong\thispagestyle{fancy}}{\thechapter}{7.5pt}{}

\titleformat{\section}[block]
  {\fontsize{15pt}{15pt}\heiti\selectfont\strong}
  {\thesection}{7pt}{}

\titleformat{\subsection}[block]
  {\fontsize{14pt}{14pt}\heiti\selectfont\strong}
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\fontsize{12pt}{12pt}\selectfont\strong}
  {\thesubsubsection}{6pt}{}

\RequirePackage[bottom, perpage]{footmisc}
\addtolength{\footnotesep}{0pt}
\setlength{\footnotemargin}{13.5pt}

\renewcommand{\footnotesize}{\fontsize{9pt}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10.5pt}{12.6pt}\selectfont}
\renewcommand\footnotelayout{\fontsize{9}{11.7}\selectfont}

%\renewcommand{\thefootnote}{\ifcase\value{footnote}\or\ding{172}\or
%\ding{173}\or\ding{174}\or\ding{175}\or\ding{176}\or\ding{177}\or
%\ding{178}\or\ding{179}\or\ding{180\or\ding{181}}\fi}
%
%\renewcommand{\footnoterule}{\vfill\noindent\vspace{0.9mm}\hspace{27pt}\rule{5.05cm}{0.02cm}\vspace*{2.6pt}}

\def\@makefntext #1{
  \ifFN@hangfoot
      \bgroup \setbox \@tempboxa \hbox {
          \ifdim
        \footnotemargin >0pt \hb@xt@
                \footnotemargin {\hbox { \normalfont \@thefnmark}\hss }
            \else
              \hbox { \normalfont \@thefnmark}
      \fi
    }
        \leftmargin \wd \@tempboxa
        \rightmargin \z@ \linewidth \columnwidth
          \advance \linewidth -\leftmargin\parshape \@ne
    \leftmargin \linewidth \footnotesize \@setpar {{\@@par }}
    \leavevmode \llap {\box \@tempboxa }\parskip
        \hangfootparskip \relax \parindent
    \hangfootparindent \relax
        \else
          \parindent 1em \noindent
            \ifdim
                \footnotemargin >\z@ \hb@xt@
                \footnotemargin {\hss \hbox { \normalfont \@thefnmark} }
            \else
        \ifdim \footnotemargin =\z@
                    \llap {\hbox { \normalfont \@thefnmark} }
                \else
          \llap {\hb@xt@ -\footnotemargin {\hbox { \normalfont \@thefnmark} \hss }}
        \fi
            \fi
    \fi
        \footnotelayout #1\ifFN@hangfoot \par \egroup
  \fi
}

\newcounter{pseudopage}
\setcounter{pseudopage}{0}
\NCEPUAddEverypageHook{\stepcounter{pseudopage}}

\newcommand\blankpage{%
  \newpage
  \null
  \thispagestyle{empty}
  %\addtocounter{pseudopage}{-1}%
  \newpage
}

\newcommand\pagecheck{\clearpage}

\newenvironment{chineseabstract}{%
  \standardhead
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \pagenumbering{Roman}
  \ifchinesebook{
    \pdfbookmark{中文摘要}{chineseabstract}
  }{
    \pdfbookmark{Chinese Abstract}{chineseabstract}
  }
  \chaptera*{\heiti{摘\chinesespace\chinesespace 要}}
  \addcontentsline{toc}{chapter}{摘\hspace{12pt}要}
  \markboth{摘要}{摘要}
}{\pagecheck}

\newcommand{\chinesekeyword}[1]{
  \vspace{\baselineskip}
  \noindent
  \parbox[t]{48pt}{\heiti\fontsize{14.05pt}{15pt}关键词\chinesecolon}
  \parbox[t]{\linewidth - 52pt}{#1}
}

\newenvironment{englishabstract}{
  \standardhead
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \ifchinesebook{
    \pdfbookmark{英文摘要}{englishabstract}
  }{
    \pdfbookmark{English Abstract}{englishabstract}
  }
  \chapterb*{Abstract}
  \addcontentsline{toc}{chapter}{Abstract}
  \markboth{Abstract}{Abstract}
}{\pagecheck}

\newcommand{\englishkeyword}[1]{
  \vspace{0.5\baselineskip}
  \noindent
  \makebox[3.2cm][l]{\fontsize{12pt}{15pt}\selectfont\bfseries KEY WORDS:}
  \parbox[t]{\linewidth - 3.3cm}{\fontsize{12.05pt}{12.05pt}\selectfont #1}
}

\tocloftpagestyle{fancy}
\renewcommand\cftchapleader{\cftdotfill{\cftdotsep}}

\renewcommand{\cftdotsep}{0.4}
\cftsetpnumwidth{\widthof{999}-1pt}

\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\setlength{\cftbeforechapskip}{0pt}

\cftsetindents{chapter}{0em}{5em}
\cftsetindents{section}{2em}{2em}
\cftsetindents{subsection}{4em}{2.75em}
\cftsetindents{subsubsection}{6em}{3.5em}


\renewcommand{\cfttoctitlefont}{\fontsize{15pt}{15pt}\selectfont\strong}
%目录章节加粗
%\renewcommand\cftchapfont{\strong}
\newcommand{\NCEPU@tocfont}{\fontsize{12pt}{12pt}\songti\songti@letter\selectfont}
\renewcommand\cftchapfont{\NCEPU@tocfont\bfseries}
\renewcommand{\cftchappagefont}{\NCEPU@tocfont\bfseries}
\renewcommand{\cftsecfont}{\NCEPU@tocfont}
\renewcommand{\cftsecpagefont}{\NCEPU@tocfont}
\renewcommand{\cftsubsecfont}{\NCEPU@tocfont}
\renewcommand{\cftsubsecpagefont}{\NCEPU@tocfont}
\renewcommand{\cftsubsubsecfont}{\NCEPU@tocfont}
\renewcommand{\cftsubsubsecpagefont}{\NCEPU@tocfont}

\newcommand{\zh@thetitle}{\chinesespace}
\newcommand{\zh@theauthor}{\chinesespace}
\newcommand{\zh@thedate}{\chinesespace}
\newcommand{\zh@theschool}{\chinesespace}
\newcommand{\zh@themajor}{\chinesespace}
\newcommand{\zh@theadvisor}{\chinesespace}
\newcommand{\zh@adminclass}{\chinesespace}

\newcommand{\en@thetitle}{\chinesespace}
\newcommand{\en@theauthor}{\chinesespace}
\newcommand{\en@thedate}{\chinesespace}
\newcommand{\en@theschool}{\chinesespace}
\newcommand{\en@themajor}{\chinesespace}
\newcommand{\en@theadvisor}{\chinesespace}
\newcommand{\en@adminclass}{\chinesespace}

\newcommand{\thestudentnumber}{\chinesespace}
\newcommand{\thesubmitdate}{\chinesespace}

\newcommand{\NCEPU@setbilingual}[3]{%
  \renewcommand{#1}{#2}%
  \@ifnextchar\bgroup%
    {\NCEPU@setbilingual@en{#3}}%
    {\renewcommand{#3}{\chinesespace}}%
}

\newcommand{\NCEPU@setbilingual@en}[2]{%
  \renewcommand{#1}{#2}%
}

\renewcommand{\title}[2]{%
  \ifstrempty{#1}{%
    \ClassError{NCEPU-thesis}{Chinese title is required in \string\title}{Use \string\title\{Chinese Title\}\{English Title\}.}%
  }{}%
  \ifstrempty{#2}{%
    \ClassError{NCEPU-thesis}{English title is required in \string\title}{Use \string\title\{Chinese Title\}\{English Title\}.}%
  }{}%
  \renewcommand{\zh@thetitle}{#1}%
  \renewcommand{\en@thetitle}{#2}%
}

\renewcommand{\author}[1]{%
  \NCEPU@setbilingual{\zh@theauthor}{#1}{\en@theauthor}%
}

\renewcommand{\date}[1]{%
  \NCEPU@setbilingual{\zh@thedate}{#1}{\en@thedate}%
}

\newcommand{\major}[1]{%
  \NCEPU@setbilingual{\zh@themajor}{#1}{\en@themajor}%
}

\newcommand{\adminclass}[1]{%
  \NCEPU@setbilingual{\zh@adminclass}{#1}{\en@adminclass}%
}

\newcommand{\school}[1]{%
  \NCEPU@setbilingual{\zh@theschool}{#1}{\en@theschool}%
}

\newcommand{\advisor}[1]{%
  \NCEPU@setbilingual{\zh@theadvisor}{#1}{\en@theadvisor}%
}

\newcommand{\studentnumber}[1]{
  \renewcommand{\thestudentnumber}{#1}
}

\newcommand{\submitdate}[1]{
  \renewcommand{\thesubmitdate}{#1}
}

\renewcommand{\strong}{\heiti}
\DeclareOption{english} {
  \newcommand{\englishbook}{}
  \renewcommand{\thechapter}{Chapter~\arabic{chapter}}
  \addtolength{\cftchapnumwidth}{12pt}
  \renewcommand{\strong}{\bfseries}
}

\newcommand{\ifchinesebook}[2]{
  \ifthenelse{\isundefined{\englishbook}}{#1}{#2}
}

\DeclareOption{bachelor}{
  \def\chinesedegreename{本科}
  \def\englishdegreename{Bachelor}
  \def\chinesebooktitle{本科毕业设计（论文）}
  \def\englishbooktitle{Bachelor Thesis}
  \def\display@englishheader{Bachelor Thesis of North China Electric Power University}
}

\ExecuteOptions{bachelor}

\ProcessOptions\relax

\ifchinesebook{
  \renewcommand{\contentsname}{目\chinesespace\chinesespace 录}
  \renewcommand{\bibname}{参考文献}
  \renewcommand{\figurename}{图}
  \renewcommand{\tablename}{表}
  \renewcommand{\listfigurename}{图目录}
  \renewcommand{\listtablename}{表目录}
}{}



\pretocmd{\listoffigures}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\listfigurename}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \ifchinesebook{
    \addtolength{\cftfignumwidth}{12pt}
    \renewcommand{\cftfigpresnum}{\figurename}
  }{
    \addtolength{\cftfignumwidth}{32pt}
    \renewcommand{\cftfigpresnum}{\figurename~}
  }
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
}{}{}

\newcommand{\thesisfigurelist}{
  \listoffigures
}

\pretocmd{\listoftables}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont\listtablename}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  
  \ifchinesebook{
    \addtolength{\cfttabnumwidth}{12pt}
    \renewcommand{\cfttabpresnum}{\tablename}
  }{
    \addtolength{\cfttabnumwidth}{32pt}
    \renewcommand{\cfttabpresnum}{\tablename~}
  }
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
}{}{}

\ifchinesebook{
  \SetAlgorithmName{算法}{算法}{算法列表}
}{
  \SetAlgorithmName{Algorithm}{Algorithm}{List of Algorithms}
}
\renewcommand\thealgocf{\arabic{chapter}-\arabic{algocf}}
\SetAlgoCaptionSeparator{\null}
\SetArgSty{textnormal}
\SetFuncArgSty{textnormal}
\SetProcArgSty{textnormal}
\AtBeginEnvironment{algorithm}{\vspace{9pt}}
\AfterEndEnvironment{algorithm}{\vspace{9pt}}

\renewcommand*{\glossarypreamble}{\vspace{-9pt}}
\newacronymstyle{acronym-uestc}{
  \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}
}{
  \renewcommand*{\GenericAcronymFields}{
    first={\the\glslongtok\space\protect\paren{\the\glsshorttok}},
    description={\the\glslongtok}}
  \renewcommand*{\genacrfullformat}[2]{%
    \glsentrydesc{##1}~(\glsentrylong{##1},\space%
    \glsentryshort{##1})%
  }
  \renewcommand*{\acronymentry}[1]{%
    \acronymfont{\glsentryshort{##1}}%
  }
}
\setacronymstyle{acronym-uestc}

\newglossarystyle{long-uestc}{
  \renewenvironment{theglossary}%
    {\begin{longtable}{lp{.7\textwidth}}}%
    {\end{longtable}}%

  \renewcommand*{\glossaryheader}{}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand{\glossentry}[2]{
    \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
    \ifglshaslong{##1}{\glsentrylong{##1}\ifglshasdesc{##1}{, \glsentrydesc{##1}}{}}
    {\glsentrydesc{##1}} \\
  }
  \renewcommand*{\subglossentry}[3]{
  \glossentry{##2}{##3}}
}

\defglsentryfmt{%
  \ifglshaslong{\glslabel}{%
    \glsgenacfmt%
  }{%
    \ifglsused{\glslabel}{%
      \glsgenentryfmt%
    }{%
      \glsgenentryfmt%
    }%
  }%
}

\newcommand{\thesisglossarylist}{
  \newpage
  \fancyhf{}
  \ifchinesebook{
    \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 缩略词表}
    \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
    \setlength\glsdescwidth{.7\textwidth}
    \pdfbookmark{缩略词表}{glossary}
    \printglossary[style=long-uestc, title={\protect\centering 缩略词表}, nonumberlist, nogroupskip]
  }{
    \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont Glossary}
    \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
    \setlength\glsdescwidth{.7\textwidth}
    \pdfbookmark{Glossary}{glossary}
    \printglossary[style=long-uestc, title={\protect\centering Glossary}, nonumberlist, nogroupskip]
  }
}


\zhnumsetup{time=Chinese}
\newcommand{\makecover}{
\thispagestyle{empty}
\setlength{\extrarowheight}{9pt}
\pdfbookmark{封面}{cover}
\begin{center}
\includegraphics[height=3.13 cm]{Thesis_Materials/Univ_ICON.png}\\[1.2cm]

\kaiti
\fontsize{50pt}{50pt}\selectfont
{\selectfont\bfseries 毕\ \ 业\ \ 设\ \ 计（论\ \ 文）}
\\[2.7cm]

\parbox{\textwidth}{\centering
  {\kaiti\fontsize{18pt}{18pt}\selectfont\bfseries 论文题目：\kaiti@letter\zh@thetitle}
} \\[2cm]



\begin{tabular}{>{\kaiti\fontsize{18pt}{18pt}\selectfont\bfseries}l
    >{\arraybackslash\kaiti\fontsize{18pt}{18pt}\selectfont\bfseries}l
    p{8cm}}
院\chinesespace\chinesespace 系： & \zh@theschool \\
专\chinesespace\chinesespace 业： & \zh@themajor \\
班\chinesespace\chinesespace 级： & \zh@adminclass \\
姓\chinesespace\chinesespace 名： & \zh@theauthor \\
学\chinesespace\chinesespace 号： & \thestudentnumber \\
指导教师： & \zh@theadvisor \\
\end{tabular}\\[4.2cm]

%\fontsize{18pt}{18pt}\selectfont{\bfseries\zhtoday}\\
\fontsize{18pt}{18pt}\selectfont{\bfseries\thesubmitdate}\\
\end{center}

\pagecheck

\setcounter{page}{0}
\setcounter{pseudopage}{0}
\setlength{\extrarowheight}{2pt}


}

\newcommand\chaptera{\clearpage
\thispagestyle{plain}%
\global\@topnum\z@
\@afterindentfalse
% 学校模板要求中英文摘要页上方不显示论文题目，保留原代码以便需要时恢复。
% {\centering
% \fontsize{24.1pt}{24.1pt}\heiti\selectfont
% \zh@thetitle\\[25pt]}
\secdef\@chapter\@schapter}

\newcommand\chapterb{\clearpage
\thispagestyle{plain}%
\global\@topnum\z@
\@afterindentfalse
% 学校模板要求中英文摘要页上方不显示论文题目，保留原代码以便需要时恢复。
% {\centering
% \fontsize{24.1pt}{20pt}\selectfont
% \en@thetitle\\[20pt]}
\secdef\@chapter\@schapter}

\newcommand{\bindpdfcover}[1]{
  \ifchinesebook{\pdfbookmark{封面}{cover}}{\pdfbookmark{Cover}{cover}}
  \includepdf[pages=-]{#1}
  \newpage\setcounter{page}{0}\setcounter{pseudopage}{0}
}

\newcommand{\originalitydeclaration}{
\newpage
\thispagestyle{empty}
\begin{spacing}{2.142}
  \ifchinesebook{\pdfbookmark{独创性声明}{originalitydeclaration}}
    {\pdfbookmark{Originality Declaration}{originalitydeclaration}}
  \noindent\begin{center}
  \fontsize{18pt}{20pt}\selectfont\heiti 独创性声明
  \end{center}
    \par{\fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{28pt}
    本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。%
    据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，%
    也不包含为获得华北电力大学或其它教育机构的学位或证书而使用过的材料。%
    与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。}
  \\[14pt]
  \fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{35pt}作者签名：\uline{\hspace{4.1cm}}\hspace{42pt}%
  日期：\chinesespace\chinesespace 年\hspace{21pt}月\hspace{21pt}日 \\
  \noindent\begin{center}
    \fontsize{18pt}{20pt}\selectfont\heiti 论文使用授权
  \end{center}
  \par{\fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{28pt}%
    本学位论文作者完全了解华北电力大学有关保留、使用学位论文的规定，%
    有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。%
    本人授权华北电力大学可以将学位论文的全部或部分内容编入有关数据库进行检索，%
    可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。}
  \par{\fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{28pt}
  \chineseleftparenthesis%
  保密的学位论文在解密后应遵守此规定%
  \chineserightparenthesis} \\[14pt]
  \fontsize{14pt}{16pt}\selectfont\noindent\null\hspace{35pt}作者签名：\uline{\hspace{4.1cm}}\hspace{12pt}%
  导师签名：\uline{\hspace{4.1cm}} \\
  \null\hspace{259pt} 日期：\chinesespace\chinesespace 年\hspace{21pt}月\hspace{21pt}日
\end{spacing}
\newpage\setcounter{page}{0}\setcounter{pseudopage}{0}
}

\setlength{\extrarowheight}{2pt}

\newcommand{\NCEPUfixedheadsetup}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0.7pt}% header rule
  \fancyhead[C]{{\songti\fontsize{9pt}{10.8pt}\selectfont 华北电力大学本科毕业设计（论文）}}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\thepage}
}

\newcommand{\standardhead}{
  \NCEPUfixedheadsetup
}

\fancypagestyle{fancy}{
  \NCEPUfixedheadsetup
}

\fancypagestyle{plain}{
  \NCEPUfixedheadsetup
}

\NCEPUfixedheadsetup

\pretocmd{\tableofcontents}{
  \thispagestyle{plain}
  \standardhead
  \fancyfoot{}
  \ifchinesebook{
    \pdfbookmark{目录}{toc}
  }{
    \pdfbookmark{Contents}{toc}
  }
}{}{}

\apptocmd{\tableofcontents}{
    \newpage
    \addtocontents{toc}{\protect\setcounter{tocdepth}{3}}
    \thispagestyle{fancy}
    \standardhead
    \pagenumbering{arabic}
    \setcounter{page}{1}
}{}{}

\newcommand{\thesistableofcontents}{

{\setstretch{1}\tableofcontents}
}

\renewcommand{\chaptermark}[1]{\markboth{\thechapter \hspace{5.25pt}#1}{}}

\newcommand{\thesisacknowledgement}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \setcounter{section}{0}
  \ifchinesebook{
    \chapter*{致\hspace{12pt}谢}
    \addcontentsline{toc}{chapter}{致\hspace{12pt}谢}
    \markboth{致谢}{致谢}
  }{
    \chapter*{Acknowledgements}
    \addcontentsline{toc}{chapter}{Acknowledgements}
    \markboth{Acknowledgements}{Acknowledgements}
  }
  \thispagestyle{fancy}
}

\newcommand{\thesisappendix}{
  \newpage
  \appendix
  %修改目录项对齐%多次使用会产生bug
  \ifchinesebook{\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{2.5em}}}{\addtocontents{toc}{\protect\addtolength{\cftchapnumwidth}{12pt}}}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{3}}
  \titleformat{\chapter}[block]
    {\centering\fontsize{15pt}{15pt}\selectfont\strong\thispagestyle{fancy}}{\thechapter}{7.5pt}{}
  \ifchinesebook{
    \renewcommand{\thechapter}{附录\Alph{chapter}}
    \renewcommand{\appendixname}{附录}
  }{
    \renewcommand{\thechapter}{Appendix \Alph{chapter}}
    \renewcommand{\appendixname}{Appendix}
  }

  \renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
  \renewcommand{\theequation}{\alph{chapter}-\arabic{equation}}
  \renewcommand{\thetable}{\alph{chapter}-\arabic{table}}
  \renewcommand{\thefigure}{\alph{chapter}-\arabic{figure}}
  \renewcommand{\thetheorem}{\alph{chapter}.\arabic{theorem}}
  \renewcommand{\theaxiom}{\alph{chapter}.\arabic{axiom}}
  \renewcommand{\thecorollary}{\alph{chapter}.\arabic{corollary}}
  \renewcommand{\thelemma}{\alph{chapter}.\arabic{lemma}}
  \renewcommand{\thedefinition}{\alph{chapter}.\arabic{definition}}
  \renewcommand{\theexample}{\alph{chapter}.\arabic{example}}
}

\newcommand{\thesissingleappendix}{
  \newpage
  \appendix
  \addtocontents{toc}{\protect\setcounter{tocdepth}{3}}
  \titleformat{\chapter}[block]
    {\centering\fontsize{18pt}{18pt}\selectfont\strong\thispagestyle{fancy}}{附\hspace{12pt}录}{7.5pt}{}
  %\renewcommand{\thechapter}{附\hspace{12pt}录}
  \ifchinesebook{
    \renewcommand{\appendixname}{附录}
  }{
    \renewcommand{\appendixname}{Appendix}
  }
  
  \renewcommand{\thesection}{A.\arabic{section}}
  
  \renewcommand{\theequation}{a-\arabic{equation}}
  \renewcommand{\thetable}{a-\arabic{table}}
  \renewcommand{\thefigure}{a-\arabic{figure}}
  \renewcommand{\thetheorem}{a.\arabic{theorem}}
  \renewcommand{\theaxiom}{a.\arabic{axiom}}
  \renewcommand{\thecorollary}{a.\arabic{corollary}}
  \renewcommand{\thelemma}{a.\arabic{lemma}}
  \renewcommand{\thedefinition}{a.\arabic{definition}}
  \renewcommand{\theexample}{a.\arabic{example}}
  
  \ifchinesebook{
    \chapter*{附\hspace{12pt}录}
    \addcontentsline{toc}{chapter}{附录}
    \markboth{附录}{附录}
  }{
    \chapter*{Appendix}
    \addcontentsline{toc}{chapter}{Appendix}
    \markboth{Appendix}{Appendix}
  }
}

\ifchinesebook{
  \newcommand{\translation@originaltitle}{外文资料原文}
  \newcommand{\translation@chinesetitle}{外文资料译文}
}{
  \newcommand{\translation@originaltitle}{Original Text for Translation}
  \newcommand{\translation@chinesetitle}{Translated Text in Chinese}
}

\newcommand{\thesistranslationoriginal}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
%   \chapter*{\translation@originaltitle}
  \renewcommand\thesection{\arabic{section}}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{\translation@originaltitle}
    \markboth{\translation@originaltitle}{\translation@originaltitle}
    \thispagestyle{fancy}
    \hypersetup{bookmarksdepth=0} 
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{Figure}
    \renewcommand{\tablename}{Table}
}

\newcommand{\thesistranslationchinese}{
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  %\chapter*{\translation@chinesetitle}
  \setcounter{chapter}{1}
  \pagestyle{empty}
  
  \setcounter{page}{1}
  \renewcommand\thesection{\arabic{section}}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{\translation@chinesetitle}
    \markboth{\translation@chinesetitle}{\translation@chinesetitle}
    \thispagestyle{fancy}
    \hypersetup{bookmarksdepth=0} 
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{图}
    \renewcommand{\tablename}{表}
}

\ifchinesebook{
  \newcommand{\thesisaccomplishtitle}{攻读\chinesedegreename{}学位期间取得的成果}
  \newcommand{\thesisbibname}{参考文献}
}{
  \newcommand{\thesisaccomplishtitle}{Research Results Obtained During the Study for \englishdegreename{} Degree}
  \newcommand{\thesisbibname}{References}
}

\renewcommand{\bibname}{\thesisbibname}
\renewcommand{\@biblabel}[1]{[#1]\hfill}

\newenvironment{thesisbibliography}{
  \begin{thebibliography}{lo}
    
    \interlinepenalty=10000
    \begin{spacing}{1}
    \thispagestyle{fancy}
    \small
}{
    \end{spacing}
  \end{thebibliography}
}


\pretocmd{\bibliography}{
  \thispagestyle{fancy}
  \interlinepenalty=10000
  \begin{spacing}{1}
}{}{}

\apptocmd{\bibliography}{
  \end{spacing}
}{}{}

\newcommand{\bstlabelmark}{lo}
\newcommand{\thesisloadbibliography}[2][]{
  \ifthenelse{
    \equal{#1}{large}
  }{
    \setlength{\labelsep}{3pt}
    \renewcommand{\bstlabelmark}{loo}
    \bibliographystyle{Thesis_Materials/GBT7714-2005}
    \bibliography{#2}
    \setlength{\labelsep}{6pt}
  }{
    \bibliographystyle{Thesis_Materials/GBT7714-2005}
    \bibliography{#2}
  }
}
\newcites{accomplish}{\thesisaccomplishtitle}

\newenvironment{thesisaccomplish}{
  \nociteaccomplish{*}
  \renewcommand{\bibname}{\thesisaccomplishtitle}
  \begin{thebibliography}{lo}
  \interlinepenalty=10000
  \begin{spacing}{1.667}
  \thispagestyle{fancy}
  \small
}{
  \end{spacing}\end{thebibliography}
  \renewcommand{\bibname}{\thesisbibname}
}

\newcommand{\thesisloadaccomplish}[1]{
  \nociteaccomplish{*}
  \renewcommand{\bibname}{\thesisaccomplishtitle}
  \renewcommand{\bstlabelmark}{lo}
  \thispagestyle{fancy}
  \begin{spacing}{1.667}
  \bibliographystyleaccomplish{Thesis_Materials/GBT7714-2005}
  \bibliographyaccomplish{#1}
  \end{spacing}
  \renewcommand{\bibname}{\thesisbibname}
}

\newtheoremstyle{dotless}{0pt}{0pt}{\normalfont}{24pt}{\strong}{}{ }{}
\theoremstyle{dotless}

\ifchinesebook{
  \newtheorem{theorem}{定理}[chapter]
  \newtheorem{axiom}[theorem]{公理}
  \newtheorem{corollary}[theorem]{推论}
  \newtheorem{lemma}[theorem]{引理}
  \newtheorem{definition}[theorem]{定义}
  \newtheorem{example}[theorem]{例子}
  \newtheorem{proposition}[theorem]{命题}
}{
  \newtheorem{theorem}{Theorem}[chapter]
  \newtheorem{axiom}[theorem]{Axiom}
  \newtheorem{corollary}[theorem]{Corollary}
  \newtheorem{lemma}[theorem]{Lemma}
  \newtheorem{definition}[theorem]{Definition}
  \newtheorem{example}[theorem]{Example}
  \newtheorem{proposition}[theorem]{Proposition}
}


\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{theorem}}
\renewcommand{\theaxiom}{\arabic{chapter}.\arabic{axiom}}
\renewcommand{\thecorollary}{\arabic{chapter}.\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\renewcommand{\thedefinition}{\arabic{chapter}.\arabic{definition}}
\renewcommand{\theexample}{\arabic{chapter}.\arabic{example}}
\renewcommand{\qedsymbol}{$\blacksquare$}
\ifchinesebook{
  \renewcommand{\proofname}{证明}
}{}

\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}
  \normalfont
  \topsep0pt \partopsep0pt
  \trivlist
  \item[\hskip5\labelsep
    \strong
  #1\@addpunct{:}]\ignorespaces
}{
  \popQED\endtrivlist\@endpefalse
}

\newcommand{\citing}[1]{\textsuperscript{\cite{#1}}}
\setlist{noitemsep}
\setlist{nolistsep}

\AtBeginDocument{
  \setlength{\abovedisplayskip}{8pt}
  \setlength{\belowdisplayskip}{8pt}
  \setlength{\belowdisplayshortskip}{8pt}
  \setlength{\abovedisplayshortskip}{8pt}
}
%\cftsetpnumwidth{0pt}
\endinput

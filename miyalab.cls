\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{miyalab}
  [2017/07/25 Yoshiki Sato]

\LoadClass[a4j, twocolumn, 9pt, uplatex, dvipdfmx]{jsarticle}

\usepackage[uplatex,jis2004]{otf}

% 古いコマンドやパッケージを警告
% nag - Detecting and warning about obsolete LaTeX commands
% http://www.ctan.org/tex-archive/macros/latex/contrib/nag
\RequirePackage[l2tabu, orthodox]{nag}

% amsmath が提供しない数式環境を使用した場合に警告
% onlyamsmath
% http://www.ctan.org/tex-archive/macros/latex/contrib/onlyamsmath
\usepackage[all, warning]{onlyamsmath}

% コメントアウト
\usepackage{comment}

% 行間スペース調整
\usepackage{setspace}

% 日本語のしおり文字化け対策
\ifx\kanjiskip\undefined\else
  \usepackage{atbegshi}
  \ifx\ucs\undefined
	\ifnum 42146=\euc"A4A2
	  \AtBeginShipoutFirst{\special{pdf:tounicode EUC-UCS2}}
	\else
	  \AtBeginShipoutFirst{\special{pdf:tounicode 90ms-RKSJ-UCS2}}
	\fi
  \else
	\AtBeginShipoutFirst{\special{pdf:tounicode UTF8-UCS2}}
  \fi
	\usepackage[dvipdfmx,colorlinks=false]{hyperref}
\fi

\usepackage[top=25truemm,bottom=25truemm,left=25truemm,right=25truemm]{geometry}

\let\@etitle\@empty
\newcommand{\etitle}[1]{\gdef\@etitle{#1}}
\let\@subtitle\@empty
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\let\@esubtitle\@empty
\newcommand{\esubtitle}[1]{\gdef\@esubtitle{#1}}

%\let\@abstract\@empty
%\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}
%\let\@keyword\@empty
%\newcommand{\keyword}[1]{\gdef\@keyword{#1}}

\let\@author\@empty
\renewcommand{\author}[1]{\gdef\@author{#1}}
%\let\@eauthor\@empty
%\newcommand{\eauthor}[1]{\gdef\@eauthor{#1}}

\let\@affiliation\@empty
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
%\let\@eaffiliation\@empty
%\newcommand{\eaffiliation}[1]{\gdef\@eaffiliation{#1}}

%\let\@email\@empty
%\newcommand{\email}[1]{\gdef\@email{#1}}

\let\@studentid\@empty
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}

\def\@maketitle{%
	\newpage\null
	\begin{center}%
		\let\footnote\thanks
		{\large \textbf{\@title} \par}%
		{\normalsize \textbf{\@etitle} \par}%
	\end{center}%
	\begin{flushright}
		\@affiliation%
		\hspace{1zw}%
		\@studentid%
		\hspace{1zw}%
		\@author%
	\end{flushright}
	\par\vskip 1.5em
	\ifvoid\@abstractbox\else\centerline{\box\@abstractbox}\vskip1.5em\fi
}

\renewcommand{\section}{%
	\@startsection{section}{1}{\z@}%
	{0.1\Cvs}% 前アキ
	{0.1\Cvs}% 後アキ
	{\normalfont\normalsize\headfont\raggedright}}

\renewcommand{\subsection}{%
	\@startsection{subsection}{1}{\z@}%
	{0.2\Cvs}% 前アキ
	{0.1\Cvs}% 後アキ
	{\normalfont\normalsize\headfont\raggedright}}

\renewcommand{\subsubsection}{%
	\@startsection{subsubsection}{1}{\z@}%
	{0.2\Cvs}% 前アキ
	{0.1\Cvs}% 後アキ
	{\normalfont\normalsize\headfont\raggedright}}

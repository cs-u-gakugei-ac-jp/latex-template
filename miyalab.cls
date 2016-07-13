\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{miyalab}
  [2016/08/03 Yoshiki Sato]

\LoadClass[a4j, twocolumn, 9pt, uplatex, dvipdfmx]{jsarticle}

\let\@etitle\@empty
\newcommand{\etitle}[1]{\gdef\@etitle{#1}}

\let\@studentid\@empty
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}

\let\@affiliation\@empty
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}

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
	{\normalfont\small\headfont\raggedright}}

\renewcommand{\subsubsection}{%
	\@startsection{subsubsection}{1}{\z@}%
	{0.2\Cvs}% 前アキ
	{0.1\Cvs}% 後アキ
	{\normalfont\small\headfont\raggedright}}

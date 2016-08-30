\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{gakugei-doctoral-course-joint-seminar}
  [2016/08/30 Yoshiki Sato]

\LoadClass[a4j, twocolumn, 9pt, uplatex, dvipdfmx]{jsarticle}

\let\@subtitle\@empty
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}

\let\@affiliation\@empty
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}

\let\@grade\@empty
\newcommand{\grade}[1]{\gdef\@grade{#1}}

\let\@keyword\@empty
\newcommand{\keyword}[1]{\gdef\@keyword{#1}}

\def\@maketitle{%
	\newpage\null
	\begin{center}%
		\let\footnote\thanks
		{\fontsize{18pt}{0pt}\selectfont \textbf{\@title} \par}%
		\textbf{\@subtitle} \par%
		\@affiliation%
		\hspace{1zw}%
		\@grade%
		\hspace{1zw}%
		\@author\par
		キーワード : \@keyword
	\end{center}%
	% {\@date}%
	\par\vskip 1.5em
	\ifvoid\@abstractbox\else\centerline{\box\@abstractbox}\vskip1.5em\fi
}

\renewcommand{\section}{%
	\@startsection{section}{1}{\z@}%
	{0.1\Cvs}% 前アキ
	{0.1\Cvs}% 後アキ
	{\normalfont\normalsize\headfont\centering}}

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

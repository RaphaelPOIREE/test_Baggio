\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classe_kara}
\RequirePackage{graphicx}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{ifthen}
\newboolean{version_article}
\newboolean{version_beamer}
\newboolean{version_etud}
\newboolean{version_prof}
\newboolean{version_site}
\newboolean{version_kara}
\newboolean{Cours}
\newboolean{TD}
\newboolean{TP}
\newboolean{Exo}
\newboolean{Essentiels}
\newboolean{BoiteAOutil}

\DeclareOption{a}{\setboolean{version_article}{true}}
\DeclareOption{b}{\setboolean{version_beamer}{true}}
\DeclareOption{e}{\setboolean{version_etud}{true}\newcommand*{\version}{élève}}
\DeclareOption{p}{\setboolean{version_prof}{true}\newcommand*{\version}{professeur}}
\DeclareOption{s}{\setboolean{version_site}{true}\setboolean{version_etud}{true}\newcommand*{\version}{internet}}
\DeclareOption{k}{\setboolean{version_kara}{true}\setboolean{version_prof}{true}\newcommand*{\version}{Kara}}
\DeclareOption{cours}{\setboolean{Cours}{true}}
\DeclareOption{td}{\setboolean{TD}{true}}
\DeclareOption{exo}{\setboolean{Exo}{true}}

\ProcessOptions

\ifthenelse{\boolean{version_article}}{\LoadClass[12pt,a4paper]{article} \RequirePackage{beamerarticle}}{}
\ifthenelse{\boolean{version_beamer}}{\LoadClass[9pt,compress]{beamer}}{}


\RequirePackage{verbatim}
\RequirePackage{framed}
\RequirePackage{mdframed}
\RequirePackage[tikz]{bclogo}
\RequirePackage{media9}
\RequirePackage{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/hevea}
\RequirePackage{ccaption}
\RequirePackage{D:/Dropbox/enseignement/CPGE/raphaelpoiree/ocg}
\RequirePackage{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/rpcinematik}
\RequirePackage{dashundergaps}
\RequirePackage{xcolor}
\RequirePackage{thumbpdf}
\RequirePackage[final]{pdfpages}
\RequirePackage{hyperref}
\RequirePackage{multimedia}
\RequirePackage[french]{varioref}
\RequirePackage{array}
\RequirePackage{transparent}
\RequirePackage{mathrsfs}
\RequirePackage{longtable}
%\hypersetup{pdfpagemode=FullScreen}
\RequirePackage{xargs}
\RequirePackage{placeins}
\RequirePackage{amsmath}
\RequirePackage{mathtools}
%\RequirePackage{schemabloc}
\RequirePackage{setspace}


\renewcommand{\\}{\par\noindent}

\mode<article>{\RequirePackage{mathptmx}}
\mode<article>{\RequirePackage{geometry}}
\mode<article>{\geometry{hmargin=1cm,vmargin=2cm}}
\mode<article>{\RequirePackage{fancyhdr}}
%\mode<article>{\pagestyle{fancy}}
\mode<article>{\RequirePackage{lastpage}}
\mode<article>{\RequirePackage{sectsty}}
\mode<article>{\definecolor{couleur_section}{RGB}{0,0,128}}
\mode<article>{\definecolor{couleur_subsection}{RGB}{66,91,138}}
\mode<article>{\sectionfont{\color{couleur_section}{}}}
\mode<article>{\subsectionfont{\color{couleur_subsection}{}}}
\mode<article>{\subsubsectionfont{\color{blue}{}}}



\mode<presentation>{\usetheme{Madrid}}
%\mode<presentation>{\usetheme{CambridgeUS}}
\mode<presentation>{\setbeamertemplate{navigation symbols}{}}
\mode<presentation>{\RequirePackage{lmodern}}
\mode<presentation>{\RequirePackage[absolute,overlay]{textpos}}
\mode<presentation>{\setbeamertemplate{caption}[numbered]}
\mode<presentation>{ \setbeamertemplate{itemize item}[square]
 \setbeamertemplate{itemize subitem}[triangle]
 \setbeamertemplate{itemize subsubitem}[circle]}
\mode<presentation>{\RequirePackage[absolute,overlay]{textpos}}



\newcommand{\PROF}[1]{\ifthenelse{\boolean{version_prof}}{#1}{}}
\newcommand{\KARA}[1]{\ifthenelse{\boolean{version_kara}}{\textcolor{red}{#1}\newline}{\null}}


\definecolor{bleuclair}{rgb}{0.7, 0.7, 1.0}
\definecolor{rosepale}{rgb}{1.0, 0.7, 1.0}
\definecolor{vertclair}{rgb}{0.0, 1.0, 0.0}

\newcommand{\slrosepale}[1]{\colorbox{rosepale}{#1}}
\newcommand{\slbleuclair}[1]{\colorbox{bleuclair}{#1}}
\newcommand{\slvertclair}[1]{\colorbox{vertclair}{#1}}

\newcommand{\titreslide}[1]{\mode<presentation>{\frametitle{#1}}}
\newcommand{\soustitreslide}[1]{\mode<presentation>{\framesubtitle{#1}}}

\newcommand{\correction}[1]
{\ifthenelse{\boolean{version_prof}}{\textcolor{blue}{#1}}{\textcolor{white}{#1}}} 

\RequirePackage{pifont,relsize}
\newcommand{\flechedroite}{{\raisebox{-0.5ex}%
{\relsize{2}\ding{217}}}\ }

\newcommand{\texteflechedroite}[1]{\flushright{\flechedroite \textbf{#1}}}

\input{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/paquet_boites}
\input{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/paquet_maths}

\mode<presentation>{
\AtBeginSection[]
{  \begin{frame}<beamer>
    \frametitle{Sommaire}
{\tableofcontents[currentsection]
}
  \end{frame}
  \addtocounter{framenumber}{-1}
}

\AtBeginSubsection[]
{  \begin{frame}<beamer>
    \frametitle{Sommaire}
{\tableofcontents[currentsection,currentsubsection]
}
  \end{frame}
  \addtocounter{framenumber}{-1}
}


\newcommand{\idee}
{
\begin{textblock*}{10mm}[1,1](129mm,95mm)
\begin{figure}\includegraphics[width=\textwidth]{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/logo-idee.jpg}\end{figure}
\end{textblock*}
}
}

\mode<article>{\newcommand{\idee}{}}

\input{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/trous_interactifs}


%% Filigrame
%\RequirePackage{draftwatermark}
%\SetWatermarkLightness{0.5}
%\SetWatermarkAngle{25}
%\SetWatermarkScale{2}
%\SetWatermarkFontSize{2cm}
%\SetWatermarkText{Texte en filigrane}

\definecolor{couleur_transparence}{rgb}{1,1,1}

\ifthenelse{\boolean{version_etud}}{\newcommand{\trouer}[1]{\textcolor{couleur_transparence}{\textbf{#1}\textbf{#1}}}}{}
\ifthenelse{\boolean{version_prof}}{\newcommand{\trouer}[1]{\uncover<+(1)->{\textbf{\textcolor{red}{#1}}}}}{}
\ifthenelse{\boolean{version_site}}{\renewcommand{\trouer}[1]{\hide{\textbf{#1}}}}{}

\ifthenelse{\boolean{version_etud}}{\newcommand{\trouerfragile}[1]{\textcolor{couleur_transparence}{\textbf{#1}}}}{}
\ifthenelse{\boolean{version_prof}}{\newcommand{\trouerfragile}[1]{\textbf{\textcolor{red}{#1}}}}{}
\ifthenelse{\boolean{version_site}}{\renewcommand{\trouerfragile}[1]{\hide{\textbf{#1}}}}{}



\newcommand{\trouerfigure}[2]{
\ifthenelse{\boolean{version_etud}}{#1}{}
\ifthenelse{\boolean{version_prof}}{\only<+(1)>{#1} \only<+(1)->{#2}}{}
}



\newcounter{question}[section]
\mode<presentation>{\resetcounteronoverlays{question}}
\newcommand{\question}[1]{ \noindent\stepcounter{question}\textbf{Question \thequestion \ :} #1\newline}
\newcommand{\reponse}[1]{\noindent\ifthenelse{\boolean{version_prof}}{
\uncover<+(1)->{\color{red}\underline{\color{blue}\textbf{Q\thequestion \ :}}\color{blue}\ #1\newline\color{black}}}{}}
\newcommand{\resultat}[1]{\fcolorbox{red}{light-gray}{#1}}

\hypersetup{pdfstartview={Fit}} % fits the presentation to the window when first displayed\RequirePackage{•} 

\newcommand*{\etablissement}{Lycée C. Baggio - Lille}
\newcommand*{\classe}{PT}
\count1=\year \count2=\year \ifnum\month<7\advance\count1by-1 \else\advance\count2by1\fi
\newcommand*{\annee}{\number\count1-\number\count2}
\newcommand*{\auteur}{R. POIRÉE}

\newcommand*{\source}[1]{
\mode<presentation>{
\begin{textblock*}{120mm}[1,0](127mm,4mm){
\begin{flushright}
\begin{spacing}{0.5}
\color{white}
\tiny{#1}
\end{spacing}
\end{flushright}
}
\end{textblock*}
}
\mode<article>{\vspace{-0.5cm}\begin{flushright}\color{gray}\emph{#1}\end{flushright}}
}


\mode<article>{
\newenvironment{changemargin}[2]{\begin{list}{}{%
\setlength{\topsep}{0pt}%
\setlength{\leftmargin}{0pt}%
\setlength{\rightmargin}{0pt}%
\setlength{\listparindent}{\parindent}%
\setlength{\itemindent}{\parindent}%
\setlength{\parsep}{0pt plus 1pt}%
\addtolength{\leftmargin}{#1}%
\addtolength{\rightmargin}{#2}%
}\item }{\end{list}}
}


\setlength\abovecaptionskip{0.25ex}


\AtEndDocument{
	\begin{frame}[allowframebreaks]\titreslide{Références}			
		\bibliographystyle{amsalpha}
		\bibliography{D:/Dropbox/enseignement/CPGE/raphaelpoiree/paquets/biblio}
	\end{frame}
}
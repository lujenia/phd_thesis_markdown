<!--
  Zentrale Variablen:
  Workaround bzw. Rückgriff auf LaTex-Befehle, um zentrale Werte immer wieder verwenden zu können.
-->

\newcommand{\titel}{Titel der Abschlussarbeit}
\newcommand{\titelEN}{Title of your thesis}
\newcommand{\datum}{01.03.2018}


\newcommand{\aVorname}{Max}
\newcommand{\aNachname}{Mustermann}
\newcommand{\aGeburtsdatum}{01.04.1998}
\newcommand{\aInstitution}{Hochschule München}
\newcommand{\aStudiengruppe}{IF7}
\newcommand{\aSemester}{WS 17/2018}
\newcommand{\aMatrikelnummer}{12345678}


\newcommand{\aName}{\aVorname\space \aNachname}


\newcommand{\pTitle}{Prof.  Dr.}
\newcommand{\pVorname}{}
\newcommand{\pNachname}{}
\newcommand{\pInstitution}{Hochschule München}


\newcommand{\bTitle}{Dr.}
\newcommand{\bVorname}{}
\newcommand{\bNachname}{}
\newcommand{\bInstitution}{Firma GmbH}

\title{\titel}
\author{\aName}

<!--
  Titelseite
-->

\begin{titlepage}
    \begin{center}
        \includegraphics[width=1\textwidth]{style/hm-fk07_logo.jpg}

        \Large
        \titel
        
        \normalsize
        \titelEN

        \vspace{0.5cm}
        \Large
        \aName

        \normalsize
        Bachelorarbeit Informatik

        \vfill

        \normalsize
        Prüfer:\\
        \pTitle\space \pVorname\space \pNachname,\space \pInstitution

        % Firmenlogo
        % \includegraphics[width=0.4\textwidth]{style/firmenlogo.png}

        \normalsize
        Betreuer:\\
        \bTitle\space \bVorname\space \bNachname,\space \bInstitution

        % Abgabedatum
        \datum

    \end{center}
\end{titlepage}

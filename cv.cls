% This file contains LaTeX configuration for all CV.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[1995/10/30 Standard LaTeX minimal class]

% [geometry] This package provides a flexible and easy interface to page dimensions.
\usepackage[a4paper,
            % We set the dimensions of the left and right margins.
            left=1cm,
            right=1cm,
            % We set the dimensions of the top and bottom margins.
            top=2cm,
            bottom=2cm]{geometry}

% We (must) redefine the font size named "normalsize" (this is mandatory).
% Please note that LaTeX defines other names for font sizes (for example: tiny, small...).
% See https://www.sharelatex.com/learn/Font_sizes,_families,_and_styles#Reference_guide
% WARNING: Make sure to redefine the command "\normalsize" before loading the package "fontspec".
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}

% This package allows users of LuaTeX to load OpenType fonts in a LaTeX document.
% Find the names of all fonts under Ubuntu:
% find /usr/share/texmf/fonts/ -name "*.otf" | xargs -n1 fc-scan --format "%{fullname}\n" | sed 's/,.\+$//'
% See https://ctan.org/pkg/fontspec
% WARNING: This package needs the font size named "normalsize" to be defined!
\usepackage{fontspec}

% The fontawesome package grants access to 634 web-related icons provided by the included
% Font Awesome font, designed by Dave Gandy and released under the open SIL Open Font License.
% See ftp://ftp.dante.de/tex-archive/fonts/fontawesome/doc/fontawesome.pdf
\usepackage{fontawesome}

% \usepackage[svgnames]{xcolor}
\usepackage[usenames, dvipsnames]{color}
\usepackage{tabularx}
\usepackage{tcolorbox}



% This package allows simple TF THEN ELSE constructions.
\usepackage{ifthen}

% Set the value to "yes" if you want to see the borders of the boxes you use.
\newcommand{\enframe}{yes}

% Create a box that contains only one line.
% Param 1: width of the box.
% Param 2: justification (l|c|r}
% Param 3: the content of the box.
\newcommand{\linebox}[3]{%
    \ifthenelse{\equal{\enframe}{yes}}{%
        \framebox[#1][#2]{#3}%
    }{%
        \makebox[#1][#2]{#3}%
    }%
}%

\newcommand{\parabox}[2]{%
    \ifthenelse{\equal{\enframe}{yes}}{%
        \framebox[#1][c]{%
            \parbox{#1}{#2}%
        }%
    }{%
        \parbox{#1}{#2}%
    }%
}%



\setlength{\parindent}{0pt}
\setlength{\fboxsep}{0pt}
% \setlength{\mboxsep}{0pt}

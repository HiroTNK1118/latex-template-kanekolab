% 金子研究室 卒業論文用 LaTeXクラス

\ProvidesClass{classes/thesis}[2024/10/30]

% (u)pLaTeX非互換パッケージに対して互換させるパッチを読み込む命令
\RequirePackage{plautopatch}
\NeedsTeXFormat{LaTeX2e}

% 1段組み,A4,フォントサイズ11pt
\LoadClass[a4paper,11pt]{ltjsreport}


% LuaTeXを日本語で使うための設定
\RequirePackage{luatexja}


\RequirePackage{graphicx} % 図表関連のパッケージ
% \graphicspath{{./figures}{./images}{./img}{./graph}}
\RequirePackage[unicode,hidelinks,pdfusetitle]{hyperref} % ハイパーリンクのパッケージ
\PassOptionsToPackage{hyphens}{url}
\RequirePackage{setspace} % 行間設定用パッケージ
\RequirePackage{caption} % キャプションとサブキャプションのパッケージ
\RequirePackage{subcaption}
\RequirePackage{here} % 好きな位置にfigなどを置くためのパッケージ
\RequirePackage{bm} % ベクトルを大文字で書くためのパッケージ
\RequirePackage[hyphens]{xurl} % URLを表示するためのパッケージ、ハイフンでの改行を許可
\urlstyle{same} % URLの表示形式を本文と同じにする
\RequirePackage{enumitem} % 高機能番号付き箇条書きのパッケージ
\RequirePackage{paralist} % インラインリストのパッケージ
\RequirePackage{amssymb, amsmath} % 高度な数式記述用パッケージ
% \RequirePackage{mathtools} % 高度な数式記述用パッケージ
\RequirePackage{tabularray} % 高度な表組み用パッケージ
\RequirePackage{minted} % ソースコード表示の用パッケージ
\RequirePackage{siunitx} % SI単位記法に準拠した形式で単位を書くためのパッケージ
\RequirePackage{subfiles} % 大規模な文章を分割して記述して、統合するためのパッケージ
\RequirePackage{xr} % 分割されたファイル間でラベルなどを相互参照するためのパッケージ
\RequirePackage{indentfirst} % 最初の段落でインデントするためのパッケージ
\RequirePackage{framed} % 囲み付き文章を出すためのパッケージ
\RequirePackage{type1cm} % 文字の大きさを自由に変えるためのパッケージ
\RequirePackage{enumitem} % 高機能番号付き箇条書きのパッケージ
\RequirePackage{tabularx} % 表の幅を指定するための

% フォントの設定
% 和文フォント - 原ノ味
% 英文フォント - STIX Two Text
% 数式フォント - STIX Two Math
\RequirePackage{luatexja-fontspec} % luatexjaで日本語と英語のフォントを指定可能にする
\setmainjfont{HaranoAjiMincho} % 和文フォントに原ノ味明朝を指定
\setsansjfont{HaranoAjiGothic} % 和文サンセリフ体に原ノ味ゴシックを指定
\setmainfont{STIX Two Text} % 英文フォントにSTIX Two Textを指定
\RequirePackage{unicode-math} % 数式フォント設定用のパッケージ
\setmathfont{STIX Two Math} % 数式フォントにSTIX Two Mathを指定


% キャプションとサブキャプションの設定
\captionsetup[figure]{labelsep=space, labelformat=simple, name=図}
\captionsetup[subfigure]{labelsep=space, labelformat=simple, name=図}
\renewcommand*{\thesubfigure}{(\alph{subfigure})}
\captionsetup[table]{labelsep=space, labelformat=simple, name=表}

\renewcommand\topfraction{.99} % 頁上部のfloatで占める最大の割合 
\renewcommand\bottomfraction{.99} % 頁下部のfloatで占める最大の割合
\renewcommand\textfraction{.01} % １頁のテキスト部の占める最小割合

\newtheorem{definition}{定義}

% 図目次を作成するマクロ
\providecommand{\iflistoffigures}{
  \ifnum\value{figure}>0
    \addcontentsline{toc}{chapter}{\listfigurename} % 目次に図目次を追加
    \listoffigures % 図目次を表示
    \cleardoublepage % 次の目次との間に改ページを挿入
  \fi
}

% 表目次を作成するマクロ
\providecommand{\iflistoftables}{
  \ifnum\value{table}>0
    \addcontentsline{toc}{chapter}{\listtablename} % 目次に表目次を追加
    \listoftables % 表目次を表示
    \cleardoublepage % 本文との間に改ページを挿入
  \fi
}

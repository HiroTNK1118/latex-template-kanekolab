#!/usr/bin/env perl

$do_cd = 1; # main.texのある位置を自動的に指定

# LaTeXコマンドの設定
$latex = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error %O %S';
$lualatex = 'lualatex -synctex=1 -file-line-error -halt-on-error --shell-escape %S';
$bibtex = 'upbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'makeindex %O -o %D %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';

# 出力フォーマットの設定
$pdf_mode = 4; # $lualatexにより直接PDFを作成
$max_repeat = 10; # 最大コンパイル回数

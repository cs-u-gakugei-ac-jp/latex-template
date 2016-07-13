#!/usr/bin/perl
$latex			= 'platex -synctex=1 -interaction=batchmode -kanji=utf-8 %O %S';
#$latex			= 'uplatex -synctex=1 -halt-on-error';
#$latex_silent	= 'uplatex -synctex=1 -halt-on-error -interaction=batchmode';
$dvipdf			= 'dvipdfmx %O -o %D %S';
$bibtex			= 'pbibtex';
$biber			= 'biber --bblencoding=utf8 -u -U --output_safechars';
$makeindex		= 'mendex %O -o %D %S';
$pdf_mode		= 3; # use dvipdf
$pdf_update_method = 2;
$pdf_previewer	= "open -ga /Applications/Skim.app";

## 既存の PDF を削除せずに上書きする．
# プレビューアのファイル更新発見機能を有効にする．
$pvc_view_file_via_temporary = 0;

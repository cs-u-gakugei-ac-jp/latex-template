# latex-template
宮寺研究室向けLaTeXテンプレート

# ipsjunsrt.bst
FUNCTION {add.colon}					% 2.00(5)
{ duplicate$ is.kanji
%    { "\：" * }						% 2.12(1)
    { "：" * }
    { ": " * }
  if$
}

# License


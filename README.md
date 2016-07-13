# latex-template
宮寺研究室向けLaTeXテンプレート

# ipsjunsrt.bst
321行目行目あたりのエスケープを削除して利用

```tex
FUNCTION {add.colon}					% 2.00(5)
{ duplicate$ is.kanji
%    { "\：" * }						% 2.12(1)
    { "：" * }
    { ": " * }
  if$
}
```

# License


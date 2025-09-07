#show: article.with(
$if(title)$
  title: "$title$",
$endif$
$if(author)$
  author: "$author$",
$endif$
$if(date)$
  date: "$date$",
$endif$
$if(params.poi)$
  poi: "$params.poi$",
$endif$
)
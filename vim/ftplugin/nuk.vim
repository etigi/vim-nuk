augroup autoformat
  au!
  au BufWritePre *.nuk 0,$%!nuk pprint
  au BufWritePre *.nukm 0,$%!nuk pprint
augroup END

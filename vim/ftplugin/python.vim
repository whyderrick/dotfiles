setlocal autoindent
setlocal expandtab
setlocal fileformat=unix
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4
setlocal textwidth=80
setlocal bg=dark

let test#python#runner = 'djangotest'
let test#python#djangotest#executable = 'pipenv run python manage.py test'

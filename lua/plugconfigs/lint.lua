require('lint').linters_by_ft = {
    go = { 'golangcilint', }
}

local golangci = require('lint.linters.golangcilint')
golangci.args = {
    'run',
    '--out-format',
    'json',
    '--enable-all',
    '-D', 'scopelint',
    '-D', 'maligned',
    '-D', 'golint',
    '-D', 'interfacer',
    '-D', 'exhaustivestruct',
    '-D', 'bodyclose',
    '-D', 'contextcheck',
    '-D', 'interfacer',
    '-D', 'nilerr',
    '-D', 'noctx',
    '-D', 'rowserrcheck',
    '-D', 'sqlclosecheck',
    '-D', 'structcheck',
    '-D', 'tparallel',
    '-D', 'unparam',
    '-D', 'wastedassign'
}

" Scala {{{3
let type_scala = {}
let type_scala.ctagstype = 'Scala'
let type_scala.kinds     = [
  \ {'short' : 'p', 'long' : 'packages',  'fold' : 1 },
  \ {'short' : 'V', 'long' : 'values',    'fold' : 0 },
  \ {'short' : 'v', 'long' : 'variables', 'fold' : 0 },
  \ {'short' : 'T', 'long' : 'types',     'fold' : 0 },
  \ {'short' : 't', 'long' : 'traits',    'fold' : 0 },
  \ {'short' : 'o', 'long' : 'objects',   'fold' : 0 },
  \ {'short' : 'a', 'long' : 'aclasses',  'fold' : 0 },
  \ {'short' : 'c', 'long' : 'classes',   'fold' : 0 },
  \ {'short' : 'r', 'long' : 'cclasses',  'fold' : 0 },
  \ {'short' : 'm', 'long' : 'methods',   'fold' : 0 }
\ ]
let type_scala.sro        = '.'
let type_scala.kind2scope = {
  \ 'T' : 'type',
  \ 't' : 'trait',
  \ 'o' : 'object',
  \ 'a' : 'abstract class',
  \ 'c' : 'class',
  \ 'r' : 'case class'
\ }
let type_scala.scope2kind = {
  \ 'type'           : 'T',
  \ 'trait'          : 't',
  \ 'object'         : 'o',
  \ 'abstract class' : 'a',
  \ 'class'          : 'c',
  \ 'case class'     : 'r'
\ }
let s:known_types.scala = type_scala

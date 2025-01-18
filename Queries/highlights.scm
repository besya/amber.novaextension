(comment) @comment

[
    "if"
    "loop"
    "for"
    "return"
    "else"
    "then"
    "break"
    "continue"
    "and"
    "or"
    "not"
    "pub"
    "main"
    "echo"
    "exit"
    "import"
    "from"
    "as"
    "in"
    "fail"
    "failed"
    "silent"
    "nameof"
    "is"
    "unsafe"
    "trust"
    "fun"
    "let"
] @keyword

[
  "fun"
  "let"
] @keyword.construct

[
  "="
  "+"
  "-"
  "*"
  "/"
  "%"
  "=="
  "!="
] @operator


; Literals
(boolean) @value.boolean
(number) @value.number
(variable) @variable
(null) @value.null
(string) @string
(status) @keyword
(command) @identifier.function
(handler) @keyword
(block) @variable
; (variable_init) @keyword
; (variable_assignment) @delimiter
; (variable_init (variable_assignment (variable) @variable))
(escape_sequence) @string.escape
(type_name_symbol) @identifier.type
(interpolation ("{") @identifier.keyword)
(interpolation ("}") @identifier.keyword)
(interpolation (variable) @identifier.variable)
(reference) @keyword
(preprocessor_directive) @keyword
(shebang) @comment

((function_definition
    name: (variable) @identifier.function))
(function_definition
  parameters: (function_parameter_list
    (function_parameter_list_item
      (variable) @identifier.argument)))
(function_call
    name: (variable) @identifier.function)
(import_statement
    "pub" @keyword
    "import" @keyword
    "from" @keyword)

; missing keywords
((variable) @keyword (#match? @keyword "(?i)^(const)$"))

; builtins
((variable) @identifier.function
  (#match? @identifier.function
  "(?i)^(cd|len|lines|mv)$"
))

(import_statement
(import_item
  (variable) @identifier.function))

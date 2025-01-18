((function_definition
  body: (block
  "{" @start
  "}" @end
  ))
  (#set! role function)
)

((block
  "{" @start
  "}" @end)
  (#set! role block)
)

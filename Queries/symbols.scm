((variable_init (variable_assignment ((variable) @name) @subtree (#set! role variable))))

((function_definition
    name: (variable) @name
    parameters: (function_parameter_list) @arguments.target
  )
  (#set! role function)
  (#set! arguments.query "arguments.scm")
) @subtree

((loop_iter
  "for"
  (variable) @name
  "in"
  )
  (#set! role variable)
) @subtree


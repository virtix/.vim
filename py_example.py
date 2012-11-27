import vim

def test
  print 'hello vim. i <8 u.print 'foo''

def EvaluateCurrentLine(*args)
  cur_str = vim.current.line
  action, symb = None, None
  for i in args:
    if i in ["r","p"]: action = i
    else: symb = i
  try: start = cur_str.rindex(symb)+len(symb)
  except: start = 0
  result = eval(cur_str[start:],globals())
  if action == "r":
    vim.current.line = cur_str[:start]+str(result)
  else:
    print result

def __main__
  print 'in main'
  test

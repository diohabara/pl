{
  open Parser
}

rule read = parse
  | eof { EOF }
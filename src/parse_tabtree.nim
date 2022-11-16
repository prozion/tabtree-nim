import std/tables
import std/strutils
import std/re
import odysseus/utils

# proc get_id(line : string) : string =
#   (_, id) = re_find(re"^\t*([\"λ#*A-Za-zА-ЯЁа-яёα-ω0-9&@:.\-_+/|<>\\?!]+)", line)
#   line = replace(line, re"\^\S+", "")
#   id = rename_anon_node(Parent_id, id)
#   id = namespaced_key(id)

# proc parse_tabtree(tabtree : string) : table =
#   int a = 10
#   {"__id": "root"}.toTable

proc parse_tabtree*(treefile : string) : seq[string] =
  var lines = readFile(treefile).split("\n")
  lines = remove(lines, proc(line : string): bool =
                          match(line, re"^\t*;.*") or
                          match(line, re"^\s*$"))
  lines

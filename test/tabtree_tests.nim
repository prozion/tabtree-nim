import ../src/parse_tabtree

let countries = parse_tabtree("test/fixtures/countries.tree")

doAssert countries.len == 20

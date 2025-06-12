#set page(width: 12cm, height: auto)
#set text(size: 10pt)
#text(size: 0.8em)[
#{
  for num in range(1, 53) {
    include("questions/" + str(num) + ".typ")
  }}
]

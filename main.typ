#set page(width: 12cm, height: auto)
#set text(size: 10pt)
#text(size: 0.8em)[
#{
  // Включаем файлы 1-3
  for num in range(1, 52) {
    include("questions/" + str(num) + ".typ")
  }}
]

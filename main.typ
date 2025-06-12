#set page(width: 21cm, height: 29.7cm, columns: 2, margin: 1cm)
#set text(size: 10pt)

#show heading: it => [
  #set align(center)
  #set text(10pt, weight: "regular")
  #block(smallcaps(it.body))
]

#text(size: 0.8em)[
#{
  for num in range(1, 53) {
    include("questions/" + str(num) + ".typ")
  }}
]

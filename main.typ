#set page(width: 21cm, height: 29.7cm, columns: 2, margin: 1cm)

#show heading: it => [
  #set align(center)
  #set text(10pt, weight: "regular")
  #block(smallcaps(it.body))
]

#text(size: 8pt)[
#{
  for num in range(1, 53) {
    let filename
    if num < 10 {
      filename = "questions/0" + str(num) + ".typ"
    } else {
      filename = "questions/" + str(num) + ".typ"
    }
    block(breakable: false)[
      #include(filename)
      #v(10pt)
    ]
  }}
]

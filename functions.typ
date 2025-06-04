#let def = [*Опр.*]

#let theorem(name: none) = {
  if name != none {
    [*Т. (#name)*:]
  } else {
    [*Т.*:]
  }
}

#let proof = [*Док-во*:]

#let qed = [#h(1fr) $square$]

#let conseq(name: none, number: none) = {
  if name != none {
    if number != none {
      [*След-е #number (#name)*:]
    } else {
      [*След-е (#name)*:]
    }
  } else {
    if number != none {
      [*След-е #number*:]
    } else {
      [*След-е*:]
    }
  }
}

#let lemma(name: none) = {
  if name != none {
    [*Лемма (#name)*:]
  } else {
    [*Лемма*:]
  }
}

#let properties = [*Св-ва*:]
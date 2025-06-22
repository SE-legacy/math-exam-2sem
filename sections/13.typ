#import "../conf.typ": definition, theorem

#theorem(
  name: "Теорема (об арифметических действиях над сходящимися рядами)",
  breakline: true
)[ 
  Ряды $sum a_n$, $sum b_n$ сходятся, и $limits(sum)^infinity_(n=1) a_n = A, #h(6pt) limits(sum)^infinity_(n=1) b_n = B, #h(6pt) lambda in RR ==>$ ряды $sum(a_n + b_n), sum lambda a_n$ сходятся, причем 
  
  $ sum^infinity_(n=1)(a_n + b_n) = A+B, quad sum^infinity_(n=1) lambda a_n = lambda A $
][
  $ sum^infinity_(n=1) (a_n+b_n) = lim_(n->infinity)sum^n_(k=1)(a_k+b_k) = lim_(n->infinity) sum^n_(k=1)a_k + lim_(n->infinity) sum^n_(k=1) b_k = A+B. $

  $ sum^infinity_(k=1) lambda a_k = limits(lim)_(n->infinity)sum^n_(k=1)lambda a_k = lambda limits(lim)_(n->infinity) sum^n_(k=1)a_k = lambda A $
]

#definition()[
  Ряд $sum a_n$ абсолютно сходится $<==>$ ряд $sum abs(a_n)$ сходится.
]

#theorem(
  name: "Теорема (о сходимости абсолютно сходящегося ряда)",
  breakline: true
)[
  Ряд $sum a_n$ абсолютно сходится $==>$ ряд $sum a_n$ сходится.
][
  $ abs(sum^(n+p)_(k=n+1) a_k) <= sum^(n+p)_(k=n+1) abs(a_k). 
  
  $ Тогда по критерию Коши сходимости ряда $sum a_n$ сходится.
]

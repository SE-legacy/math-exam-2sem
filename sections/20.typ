#import "../conf.typ": definition, theorem

#definition()[
  Пусть $phi: NN -> NN$ --- взаимно однозначное отображение. Ряд $sum a_phi(k)$ называют перестановкой ряда $sum a_n$.

  Обозначив $phi(k) = n_k$, перестановку можно записать, как $sum a_n_k$.
]

#theorem(
  name: "Теорема (коммутативный закон для знакоположительного ряда)",
  breakline: true
)[
  $forall k in NN #h(6pt) a_k >= 0$. Тогда для любой перестановки ряда выполняется:

  $ sum^infinity_(k=1) a_n_k = sum^infinity_(k=1) a_k. $
][
  Пусть $m_p = max(n_1, n_2, dots, n_p), #h(6pt) p in NN$. Тогда $forall p$

  $ sum^p_(k=1) a_n_k <= sum^(m_p)_(k=1) a_k <= sum^infinity_(k=1) a_k ==> \
  sum^infinity_(k=1) a_n_k <= sum^infinity_(k=1) a_k. $

  С другой стороны, ряд $sum a_k$ можно также считать перестановкой ряда $sum a_n_k$. Тогда 
  
  $ sum^infinity_(k=1) a_k <= sum^infinity_(k=1) a_(n_k). $
  
  Cледовательно, равенство верно.
]

#theorem(
  name: "Теорема (коммутативный закон для абсолютно сходящегося ряда)",
  breakline: true
)[
  Ряд абсолютно сходится $==>$ любая его перестановка абсолютно сходится, и их суммы равны.
][
  Применим предыдущую теорему для рядов $sum a^+_n$ и $sum a^-_n$.
]

#theorem(name: "Теорема (Римана)")[
  Если ряд $sum a_n$ сходится условно, то для любого $A in overline(RR)$ существует такая перестановка, что
  
  $ sum^infinity_(k=1) a_n_k = A. $
][]
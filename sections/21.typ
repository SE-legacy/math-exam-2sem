#import "../conf.typ": definition, theorem

#definition()[
  Числовой ряд $sum c_n$, где 

  $ c_n = a_n dot sum^(n-1)_(k=1) b_k + b_n dot sum^(n-1)_(k=1) a_k + a_n b_n, $
  
  называется произведением рядов $sum a_n$ и $sum b_n$, согласованных с произведением частных сумм.

  Если $A_n = limits(sum)^n_(k=1) a_k, #h(6pt) B_n = limits(sum)^n_(k=1) b_k, #h(6pt) C_n = limits(sum)^n_(k=1) c_k$, то $C_n = A_n dot B_n$.
]

#theorem(name: "Теорема (о произведении абсолютно сходящихся рядов)")[
  Пусть ряды $sum a_n$ и $sum b_n$ абсолютно сходятся, тогда при любой нумерации элементов матрицы 
  
  $ C = mat(
    a_1 b_1, a_1 b_2, a_1 b_3, dots;
    a_2 b_1, a_2 b_2, a_2 b_3, dots;
    dots, dots, dots, dots;
  ) $

  ряд $sum c_n$, являющийся произведением рядов $sum a_n$ и $sum b_n$, согласованных с произведением частных сумм, абсолютно сходится и 
  
  $ sum^infinity_(n=1) c_n = sum^infinity_(n=1) a_n dot sum^infinity_(n=1) b_n. $
][
  Рассмотрим следующую нумерацию:

  $ c_1 = a_1 b_1, c_2 = a_1 b_2, quad c_3 = a_2 b_2, quad c_4 = a_2 b_1, \
  c_5 = a_1 b_3, quad c_6 = a_2 b_3, quad c_7 = a_3 b_3, quad c_8 = a_3 b_2, quad c_9 = a_3 b_1, quad c_10 = a_1 b_4, #h(6pt) dots. $ 
  
  Тогда 
  
  $ sum^n_(k=1) abs(c_k) <= sum^(n^2)_(k=1) abs(c_k) = sum^n_(k=1) abs(a_k) dot sum^n_(k=1) abs(b_k). $

  Переходя к пределу при $n -> infinity$
  
  $ sum^infinity_(k=1) abs(c_k) <= sum^infinity_(k=1) abs(a_k) dot sum^infinity_(k=1) abs(b_k) < + infinity, $
  
  т.е. ряд $sum c_n$ абсолютно сходится. Тогда любая его перестановка $sum c_phi(n)$ абсолютно сходится, и её сумма равна сумме ряда $sum c_n$.
  
  Произведем группировку $c_1 + (c_2 + c_3 + c_4) + (c_5 + dots + c_9) + dots$, согласованную с произведением частных сумм. Тогда при любой нумерации элементов матрицы $C$
  
  $ sum^infinity_(n=1) c_phi(n) = sum^infinity_(n=1) c_n = sum^infinity_(n=1) a_n dot sum^infinity_(n=1) b_n. $
]
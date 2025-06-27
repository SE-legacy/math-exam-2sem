#import "../conf.typ": theorem

#theorem(name: "Теорема (критерий интегрируемости)")[
  Фукнция $f$ определена и ограничена на $[a,b]$. Тогда следующие условия эквивалентны:

  #enum(number-align: horizon, 
    [
    $f$ интегрируема;
    ],
    [
    $forall epsilon > 0 #h(6pt) exists P #h(6pt) S(P) - s(P)<epsilon$;
    ],
    [
      $underline(I) = overline(I)$, при этом $underline(I) = overline(I) = limits(integral)^b_a f(x) d x$.
    ],
  )
][ 
  $1==>2$.
  
  $f$ интегрируема $==> forall epsilon>0 #h(6pt) exists delta > 0 #h(6pt) forall(P, xi_p) #h(6pt) (d(P)< delta ==> abs(sigma(P, xi_P) -I) < epsilon/4)$

  По свойству 4 сумм Дарбу для $P #h(6pt) exists xi'_P, xi''_P:$

  $S(P)-sigma(P,xi'_P) < epsilon/4, quad sigma(P,xi''_P) - s(P) < epsilon/4$, но $abs(sigma(P,xi'_P)- I) < epsilon/4, quad abs(I-sigma(P,xi''_P)) <epsilon/4.$ Тогда

  $ abs(S(P)-s(P)) = \
  = abs(lr((S(P)-sigma(P,xi'_P)), size: #125%) + lr((sigma(P,xi'_P) - I), size: #125%) + lr((I-sigma(P,xi''_P)), size: #125%) + lr((sigma(P,xi''_P) - s(P)), size: #125%)) <= \
  <= abs(S(P)-sigma(P,xi'_P)) + abs(sigma(P,xi'_P) - I) + abs(I - sigma(P,xi''_P)) + abs(sigma(P,xi''_P) - s(P)) < 4 dot epsilon/4 = epsilon. $

  $2==>3$. 
  
  $forall epsilon > 0 #h(6pt) exists P #h(6pt) S(P) - s(P)<epsilon$. При этом $s(P)<=underline(I) <= overline(I) <= S(P)$, 
  
  тогда $0 <=  overline(I) - underline(I) <= S(P) - s(P) < epsilon$.

  Т.к. $epsilon$ --- произвольное, то $overline(I) - underline(I) = 0 <==> underline(I) = overline(I)$

  $3==>1$. 
  
  Пусть $underline(I) = overline(I) = A$. По основной лемме Дарбу 

  $ forall epsilon>0 #h(6pt) exists delta>0 #h(6pt) forall P #h(6pt) lr((d(P)< delta => lr((S(P)-A < epsilon and A-s(P) < epsilon), size: #125%)), size: #150%). $

  По свойству 1 сумм Дарбу 
  
  $ A-epsilon<s(P)<= sigma(P,xi_P)<= S(P) < A + epsilon. $

  Тогда $abs(sigma(P, xi_P)-A) < epsilon$, т.е. $limits(lim)_(d->0) sigma(P, xi_P) = A$. Значит $f$ интегрируема, и 
  
  $ limits(integral)^b_a f(x) d x = A = underline(I) = overline(I). $
]
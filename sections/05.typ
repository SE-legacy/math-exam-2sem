#import "../conf.typ": theorem, block_base, consequence

#theorem(name: "Теорема (линейность интеграла)")[
  $f, g in Re[a, b], #h(6pt) c in RR$. Тогда $f + g, #h(6pt) c f in Re[a, b]$, и

  $ limits(integral)_a^b (f(x) + g(x)) d x = limits(integral)_a^b f(x) d x + limits(integral)_a^b g(x) d x, quad limits(integral)_a^b c f(x) d x = c limits(integral)_a^b f(x) d x $
][ 
  $sigma(f + g, P, xi_(P)) = sigma(f, P, xi_(P)) + sigma(g, P, xi_(P))$.

  $sigma(c f, P, xi_(P)) = c dot sigma(f, P, xi_(P))$.
] 

#theorem(name: "Теорема (аддитивность интеграла)")[
  Пусть $a < c < b$, тогда $f in Re[a, b]$ тогда и только тогда, когда $f in Re[a, c]$ и $f in Re[c, b]$, причем

  $ limits(integral)_a^b f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(b) f (x) d x. $
][
Достаточность. $f in Re[a, b], #h(6pt) epsilon > 0$. По критерию интегрируемости $exists P_([a, b]) #h(6pt) S(P) - s(P) < epsilon$. 

Пусть $P^(*) = P union {c}$. Тогда
$S(P^(*)) - s(P^(*)) <= S(P) - s(P) < epsilon, #h(6pt) P^(*) = P'_([a, c]) union P''_([c, b]) = P' union P''$.

$ S(P') - s(P') <= S(P^(*)) - s(P^(*)) < epsilon, \ 
  S(P'') - s(P'') <= S(P^(*)) - s(P^(*)) < epsilon $

Тогда по критерию интегрируемости $f in Re[a, c]$ и $f in Re[c, b]$.

Необходимость. $f in Re[a, c]$ и $f in Re[c, b], #h(6pt) epsilon > 0. #h(6pt) exists P' = P'_([a, c])$ и $exists P'' = P''_([c, b]):$

$S(P') - s(P') < (epsilon)/(2), #h(6pt) S(P'') - s(P'') < (epsilon)/(2)$.

Тогда для $P = P_([a, b]) = P' union P'' quad S(P) - s(P) < (epsilon)/(2) + (epsilon)/(2) < epsilon$, т.е. $f in Re[a, b]$. 
]

#theorem(name: "Теорема (монотонность интеграла)")[
  $ f, g in Re[a, b], quad forall x in [a, b] #h(6pt) f(x) <= g(x) ==>  limits(integral)_a^b f(x) d x <= limits(integral)_a^b g(x) d x. $
][
  $forall P #h(6pt) forall xi_(P) #h(6pt)  sigma(f, P, xi_(P)) <= sigma(g, P, xi_(P)).$ Переходя к пределу при $d(P) -> 0$, получим
  $ limits(integral)_a^b f(x) d x <= limits(integral)_a^b g(x) d x. $ 
]

#consequence(name: "Следствие 1")[
  $f in Re[a, b], #h(6pt) forall x #h(6pt) f(x) >= 0 ==> limits(integral)_a^b f(x) d x >= 0$.
][]

#consequence(name: "Следствие 2")[
  $ f in Re[a, b] ==> abs(limits(integral)_a^b f(x) d x) <= limits(integral)_a^b abs(f(x)) d x <= limits(sup)_(x in[a, b]) abs(f(x)) (b - a). $ 
][]

#theorem(name: "Теорема (первая теорема о среднем)")[
  $f, g in Re[a, b], #h(6pt) forall x in [a, b] #h(6pt) g(x) >= 0 #h(6pt) lr((g(x) <= 0), size: #125%)$,

  $M = limits(sup)_(x in[a, b]) f(x), m = limits(inf)_(x in[a, b]) f(x) ==>$
  $ exists mu in [m, M] #h(6pt) limits(integral)_a^b f(x) g(x) d x = mu limits(integral)_a^b g(x) d x. $

  При дополнительном условии, что $f$ непрерывна на $[a, b]$ 
  $ exists xi in [a, b] #h(6pt) f(xi) = mu, quad limits(integral)_a^b f(x) g(x) d x = f(xi) limits(integral)_a^b g(x) d x. $
][
  $forall x in [a, b] #h(6pt) g(x) >= 0, #h(6pt) m <= f(x) <= M ==> m g(x) <= f(x) g(x) <= M g(x) ==>$
  $ m limits(integral)_a^b g(x) d x <= limits(integral)_a^b f(x) g(x) d x <= M limits(integral)_a^b g(x) d x. \
  limits(integral)_a^b g(x) d x = 0 ==> 0 = 0. \
  limits(integral)_a^b g(x) d x > 0 ==> m <= (limits(integral)_a^b f(x) g(x) d x)/(limits(integral)_a^b g(x) d x) <= M (limits(integral)_a^b f(x) g(x) d x)/(limits(integral)_a^b g(x) d x) = mu. $
]

#consequence(breakline: true)[ 
  $g(x) equiv 1 ==> limits(integral)_a^b f(x) d x  = f(xi)(b - a)$.

  $f$ непрерывна на $[a, b] ==> exists xi in [a, b] quad limits(integral)_a^b f(x) d x = f(xi) (b - a)$.
][]

#theorem(name: "Теорема (операции над интегрируемыми функциями)")[ 
  $f, g in Re[a, b]$. Тогда функции $abs(f), #h(6pt) f dot g, и 1/f$ интегрируемы на $[a,b]$, при условии $exists c > 0 #h(6pt) forall x in [a, b] #h(6pt) abs(f(x)) >= c$.
][
  Пусть $epsilon > 0, #h(6pt) S(f, P) - s(f, P) < epsilon$.

  + #[
    Докажем, что $abs(f)$ интегрируема:

    $ forall xi, eta in Delta_k quad abs(f(xi)) - abs(f(eta)) <= abs(f(xi) - f(eta)) <= M_(k)(f) - m_(k)(f), $
    
    $M_(k)(f) = limits(sup)_(x in Delta_k) f(x), quad m_(k)(f) = limits(inf)_(x in Delta_k) f(x)$. Тогда, 

    $ M_(k)(abs(f)) - m_(k)(abs(f)) <= M_(k)(f) - m_(k)(f) ==> \
    S(abs(f), P) - s(abs(f), P) <= S(f, P) - s(f, P) < epsilon $
    
    Тогда по критерию интегрируемости $abs(f) in Re[a, b]$.
  ] 
  + #[
    Докажем, что $f^(2)$ интегрируема:
    
    $f$ интегрируема, тогда  $f$ ограничена, т.е. $exists A > 0 #h(6pt) forall x in [a, b] #h(6pt) abs(f(x)) <= A$.
    
    Пусть $xi, eta in Delta_(k)$, тогда 
    
    $ f^(2)(xi) - f^(2)(eta) = lr((f(xi) + f(eta)), size: #125%) lr((f(xi) - f(eta)), size: #125%) <= 2A lr((f(xi) - f(eta)), size: #125%) <= 2A lr((M_(k)(f) - m_(k)(f)), size: #125%) ==> \
    S(f^(2), P) - s(f^(2), P) <= 2A lr((S(f, P) - s(f, P)), size: #125%) < 2A epsilon. $
    
    Тогда по критерию интегрируемости $f^(2) in Re[a, b]$. Т.к. $f dot g = (1)/(4)((f + g)^(2) - (f - g)^(2)) ==> f dot g in Re[a, b]$.
  ]
  + #[
    Докажем, что $(1)/(f)$ интегрируема:
    $ (1)/(f(xi)) - (1)/(f(eta)) = (f(eta) - f(xi))/(f(xi)f(eta)) <= (1)/(C^(2)) lr((M_(k)(f) - m_(k)(f)), size: #125%) ==> \ 
    M_(k)((1)/(f)) - m_(k)((1)/(f)) <= (1)/(C^(2)) lr((M_(k)(f) - m_(k)(f)), size: #125%), \ 
    S((1)/(f), P) - s((1)/(f), P) <= (1)/(C^(2))(S(f, P) - s(f, P)) < (1)/(C^(2)) epsilon $
    
    Тогда по критерию интегрируемости $(1)/(f) in Re[a, b]$.
  ]
]

*Замечание*:
Из интегрируемости $abs(f)$ не следует интегрируемость $f$.

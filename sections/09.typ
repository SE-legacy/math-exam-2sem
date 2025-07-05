#import "../conf.typ": definition, theorem

#definition()[ 
  Пусть функция $f$ определена на $[a, +infinity)$, $forall b in [a, +infinity) #h(6pt) f in Re[a, b]$. Предел

  $ limits(integral)_(a)^(+infinity) f(x) d x colon.eq  limits(lim)_(b -> +infinity) limits(integral)_a^b f(x) d x $

  называется несобственным интегралом 1–го рода, если предел существует и конечен.
  Тогда говорят, что несобственный интеграл сходится. Аналогично определяют $limits(integral)_(-infinity)^(b) f(x) d x$.
]

#definition()[ 
  Пусть функция $f$ определена на $[a, B)$, неограничена в $O(B)$ и $forall b in [a, B) #h(6pt) f in Re[a, b]$. Предел

  $ limits(integral)_a^b f(x) d x colon.eq limits(lim)_(b -> B-0) limits(integral)_a^b f(x) d x $

  называется несобственным интегралом 2–го рода, если предел существует и конечен. Тогда говорят, что несобственный интеграл сходится.
]

#definition()[ 
  Пусть функция $f$ определена на $[a, omega)$ и $forall [a, b] subset [a, omega) #h(6pt) f in Re[a, b]$
  
  $ limits(integral)_(a)^(omega) f(x) d x colon.eq limits(lim)_(b -> omega) limits(integral)_a^b f(x) d x. $ 
]

#theorem(name: "Теорема (свойства несобственного интеграла Римана)")[
  Пусть несобственные интергалы $limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ сходятся, тогда:

  + Если $omega in RR, #h(4pt) f in Re [a, omega]$, то значения $limits(integral)_(a)^(omega) f(x) d x$ в несобственном и собственном смысле равны.

  + #[
    Если $forall lambda a_(1), lambda a_(2) in RR$, то функция $lambda a_(1) f + lambda a_(2) g$ интегрируема в несобственном смысле и 
    
    $ limits(integral)_(a)^(omega) lr((lambda a_(1) f(x) + lambda a_(2) g(x)), size: #125%) d x = lambda a_(1) limits(integral)_(a)^(omega) f(x) d x + lambda a_(2) limits(integral)_(a)^(omega) g(x) d x. $
  ]

  + #[
    Если $c in [a, omega)$, то 
  
    $ limits(integral)_(a)^(omega) f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(omega) f(x) d x. $
  ]

  + #[
    Функция $phi$ непрерывно дифференцируема и строго монотонна на $[alpha, gamma), #h(6pt) phi(alpha) = a$ и $phi(beta) -> omega$ при $beta -> gamma, beta in [alpha, gamma)$. Тогда несобственный интеграл от $(f compose phi)phi'$ на $[alpha, gamma)$ существует и 
      
    $ limits(integral)_(a)^(omega) f(x) d x = limits(integral)_(alpha)^(gamma) f(phi(t))phi'(t) d t. $
  ] 
][
  + Следует из непрерывности функции $F(b) = limits(integral)_a^b f(x) d x$ на $[a, omega]$ при $f in Re[a, omega]$.

  + #[
    Следует из того, что при $b in [a, omega)$ 
    
    $ limits(integral)_a^b lr((lambda_(1) f(x) + lambda_(2) g(x)), size: #125%) d x = lambda_(1) limits(integral)_a^b f(x) d x + lambda_(2) limits(integral)_a^b g(x) d x. $
  ]

  + #[
    Следует из того, что $forall b, c in [a,omega)$ 
    
    $ limits(integral)_a^b f(x) d x = limits(integral)_(a)^(c) f(x) d x + limits(integral)_(c)^(b) f(x) d x. $
  ]

  + #[
    Следует из того, что 

    $ limits(integral)_(a = phi(alpha))^(b = phi(beta)) f(x) d x = limits(integral)_(alpha)^(beta) f(phi(t))phi'(t) d t. $
  ]
]

#theorem(
  name: "Теорема (критерий Коши сходимости несобственного интеграла)",
  breakline: true
)[
  Несобственный интеграл $limits(integral)_(a)^(omega) f(x)d x$ сходится тогда и только тогда, когда

  $ forall epsilon > 0 #h(6pt) exists B in [a, omega) #h(6pt) forall b_(1), b_(2) in (B, omega) #h(6pt) abs(limits(integral)_(b_(1))^(b_(2)) f(x) d x) < epsilon. $
][
  По определению несобственного интеграла, он сходится тогда и только тогда, когда он существует и конечен 

  $ limits(lim)_(b -> infinity) F(b) = limits(integral)_a^b f(x) d x, #h(6pt) b in [a, omega), " и" \
  limits(integral)_(b_(1))^(b_(2)) f(x) d x = limits(integral)_(a)^(b_(2)) f(x) d x - limits(integral)_(a)^(b_(1)) f(x) d x = F(b_(2)) - F(b_(1)). $
  
  Тогда $F$ имеет предел при $b -> omega$ по критерию Коши существования предела функции.
]

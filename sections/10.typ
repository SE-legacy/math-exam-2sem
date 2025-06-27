#import "../conf.typ": definition, theorem

#definition(breakline: true)[
  Несобственный интеграл $limits(integral)_(a)^(omega) f(x) d x$ сходится абсолютно, если сходится $limits(integral)_(a)^(omega) abs(f(x)) d x$.
]

#theorem(
  name: "Теорема (о сходимости абсолютно сходящегося интеграла)",
  breakline: true
)[ 
  Несобственный интеграл $limits(integral)_(a)^(omega) f(x) d x$ абсолютно сходится $==>$ он сходится
][
  По свойствам несобственного интеграла 
  $ abs(limits(integral)_(b_(1))^(b_(2)) f(x) d x) <= limits(integral)_(b_(1))^(b_(2)) abs(f(x)) d x. $
  По критерию Коши сходимости несобственного интеграла интеграл сходится.
]

#theorem()[
  Пусть $forall x in [a, omega) #h(6pt) f(x) >= 0$. Несобственный интеграл $limits(integral)_(a)^(omega) f(x) d x$ сходится тогда и только тогда, когда функция 
  $ F(b) = limits(integral)_a^b f(x) d x, #h(6pt) b in [a,omega) $ ограничена
][
  Пусть $forall x in [a, omega) #h(6pt) f(x) >= 0$. Тогда  $F(b) = limits(integral)_a^b f(x) d x$ не убывает на $[a, omega)$. Значит, она имеет предел при $b -> omega, #h(6pt) b in [a, omega)$ тогда и только тогда, когда она ограничена.
]

#theorem(name: "Теорема (признак мажорации)")[ 
  $forall x in [a, omega) #h(6pt) 0 <= f(x) <= g(x)$ и несобственный интеграл 
  $limits(integral)_(a)^(omega) g(x) d x$ сходится $==> limits(integral)_(a)^(omega) f(x) d x$ сходится
][ 
  $limits(integral)_(a)^(omega) g(x) d x$ сходится. Тогда функция $G(b) = limits(integral)_a^b g(x) d x, b in [a, omega)$ ограничена. По свойству монотонности собственного интеграла 
  $ 0 <= F(b) = limits(integral)_a^b f(x) d x <= limits(integral)_a^b g(x) d x = G(b) $
  Тогда функция $F$ ограничена. Тогда по предыдущей теореме $limits(integral)_(a)^(omega) f(x) d x$ сходится.
]

#theorem(name: "Теорема (признак сравнения)")[
  $forall x in [a, omega) #h(6pt) f(x) >= 0, #h(6pt) g(x) >= 0, #h(6pt) 0 < A < +infinity$ и 
  $ lim_(x -> omega) f(x)/g(x) = A ==> $
  несобсвенные интегралы $limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ одновременно сходятся или расходятся.
][
  Пусть $epsilon = A/2 > 0, #h(6pt) exists c in [a, omega)$ такое, что при $x in [c, omega)$
  $ abs(f(x)/g(x) - A) < A/2 ==> \ A/2 g(x) < f(x) < 3/2 A g(x). $ 
  Остаётся воспользоваться признаком мажорации и свойством 3 из теоремы о свойствах несобственного интеграла.
]

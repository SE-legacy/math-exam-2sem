#import "../conf.typ": definition, theorem, block_base

#definition()[
  Несобственный интеграл $limits(integral)_a^omega f(x) d x$ называют условно сходящимся, если он сходится, а $limits(integral)_a^omega abs(f(x)) d x$ расходится.
]

Пусть функции $f$, $g$, $g'$ непрерывны на $[a, omega)$, $F(b) = limits(integral)_a^b f(x) d x$. Тогда по формуле интегрирования по частям: 

$ limits(integral)_a^b f(x)g(x) d x = g(b)F(b) - g(a)F(a) - limits(integral)_a^b g'(x)F(x) d x. $

#block_base("Утверждение", false, [
  Если существует несобственный интеграл $limits(integral)_a^omega g'(x)F(x) d x = A$ и существует конечный предел $limits(lim)_(b -> omega) g(b)F(b) = B$, то существует несобственный интеграл 

  $ limits(integral)_a^omega f(x)g(x) d x = B - g(a)F(a) - A. $
])

#theorem(name: "Теорема (признак Дирихле)")[ 
  Пусть фукнции $f$, $g$, $g'$ непрерывны на $[a, omega)$, функция $F(b) = limits(integral)_a^b f(x) d x$ ограничена на $[a, omega)$, $g(x) -> 0$, монотонно убывая, при $x -> omega$. Тогда несобственный интеграл $limits(integral)_a^omega f(x)g(x) d x$ сходится.
][
  $limits(lim)_(b -> omega) g(b)F(b) = 0$. Т.к. $g'(x) <= 0$, то 

  $ lim_(b -> omega) limits(integral)_a^b abs(g'(x)) d x = -lim_(b -> omega) limits(integral)_a^b g'(x) d x = -lim_(b -> omega) [g(b) - g(a)] = g(a), $
  
  т.е. несобственный интеграл $limits(integral)_a^omega abs(g'(x)) d x$ сходится. Т.к. функция $F$ ограничена, то по признаку мажорации $limits(integral)_a^omega abs(g'(x)F(x)) d x$ сходится. Значит, сходится и $limits(integral)_a^omega g'(x) F(x) d x$. Осталось воспользоваться предыдущим утверждением.
]

#theorem(name: "Теорема (признак Абеля)")[ 
  Пусть функции $f$, $g$, $g'$ непрерывны на $[a, omega)$, несобственный интеграл $limits(integral)_a^omega f(x) d x$ сходится, $g$ монотонна и ограничена на $[a, omega)$. Тогда  несобственный интеграл $limits(integral)_a^omega f(x)g(x) d x$ сходится.
][
  Д О К А З А Т Ь #h(8pt) С А М О С Т О Я Т Е Л Ь Н О #emoji.skull.
]

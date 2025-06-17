#set text(size: 8pt)
#set par(leading: 1em)
#show heading: it => [
  #set align(center)
  #set text(8pt, weight: "bold")
  #set par(leading: 0pt)
  #block(smallcaps(it.body))
]

#set page(width: 21cm, height: 29.7cm, columns: 2, margin: 1cm)

= Простейшие интегралы

$integral (d x )/(a^2 + x^2) = 1/a arctan x/a + C$, $#h(25pt) integral (d x )/(a^2 - x^2) = 1/(2a) ln abs((a+x)/(a-x)) + C$,\
$integral (d x )/sqrt(a^2 - x^2) = arcsin x/a + C$, $#h(28pt) integral (d x )/sqrt(x^2 plus.minus a^2) = ln abs(x + sqrt(x^2 plus.minus a^2)) + C$,\
$integral (x d x )/(a^2 plus.minus x^2) = plus.minus 1/2 ln abs(a^2 plus.minus x^2) + C$, $#h(10pt) integral (x d x )/sqrt(a^2 plus.minus x^2) = plus.minus sqrt(a^2 plus.minus x^2) + C$,\
$integral sqrt(a^2 - x^2) d x =  x/2 sqrt(a^2 - x^2) + a^2/2 arcsin x/2 + C$,\ 
$integral sqrt(x^2 plus.minus a^2) d x = x/2 sqrt(x^2 plus.minus a^2) plus.minus a^2/2 ln abs(x + sqrt(x^2 plus.minus a^2)) + C$.\


// #let enum-columns(start: 1, gutter: 0.5em, ..column-items) = {
//   let columns-data = column-items.pos()
//   let num-columns = columns-data.len()
//
//   if num-columns == 0 {
//     return []
//   }
//   let column-widths = (1fr,) * num-columns
//
//   let current-start = start
//   let column-content = ()
//
//   for (col-idx, items) in columns-data.enumerate() {
//     column-content.push([
//       #enum(number-align: horizon, start: current-start, ..items)
//     ])
//     current-start += items.len()
//   }
//
//   grid(
//     columns: column-widths,
//     gutter: gutter,
//     ..column-content
//   )
// }
//
// #enum-columns(
//   (
//   $ integral (d x )/(a^2 + x^2) = 1/a arctan x/a + C $,
//   $ integral (d x )/(a^2 - x^2) = 1/(2a) ln abs((a+x)/(a-x)) + C $,
//   $ integral (d x )/sqrt(a^2 - x^2) = arcsin x/a + C $,
//   $ integral (d x )/sqrt(x^2 plus.minus a^2) = ln abs(x + sqrt(x^2 plus.minus a^2)) + C $,
//   ),
//   (
//   $ integral (x d x )/(a^2 plus.minus x^2) = plus.minus 1/2 ln abs(a^2 plus.minus x^2) + C $,
//   $ integral (x d x )/sqrt(a^2 plus.minus x^2) = plus.minus sqrt(a^2 plus.minus x^2) + C $,
//   $ integral sqrt(a^2 - x^2) d x =  x/2 sqrt(a^2 - x^2) + a^2/2 arcsin x/2 + C $,
//   $ & integral sqrt(x^2 plus.minus a^2) d x = \ &x/2 sqrt(x^2 plus.minus a^2) plus.minus a^2/2 ln abs(x + sqrt(x^2 plus.minus a^2)) + C $,
//   )
// )

= Несобственные интегралы
== Признаки сходимости
#text(7pt)[
#table(
  columns: (auto, auto),
  align: top,
  stroke: none,
  [
    *Пр. мажорации* \
    на $[a, omega)$ $#h(4pt) 0 <= f(x) <= g(x)$ 
    $limits(integral)_(a)^(omega) g(x) d x$ сход. $==>$ $limits(integral)_(a)^(omega) f(x) d x$ сход.
  ],
  [
    *Пр. сравнения* \
    на $[a, omega)$ $f(x) >= 0, #h(4pt) g(x) >= 0$ $#h(4pt) exists limits(lim)_(x -> omega) f(x)/g(x) != 0 "и конечен" ==>$ $limits(integral)_(a)^(omega) f(x) d x$ и $limits(integral)_(a)^(omega) g(x) d x$ ведут себя одинак.
  ],
  [
    *Пр. Дирихле*\ на $[a, omega)$ $f, g, g'$ непр., $F(b) = limits(integral)_a^b f(x) d x$ огр., $g(x) arrow.b -> 0$, при $x -> omega ==>$ $limits(integral)_(a)^(omega) f(x)g(x) d x$ сход.
  ],
  [
    *Пр. Абеля*\ на $[a, omega)$ $f, g, g'$ непр., $limits(integral)_(a)^(omega) f(x) d x$ сход., $g$ монот. и огр.$==>$ $limits(integral)_(a)^(omega) f(x)g(x) d x$ сход.
  ],
)
]

== Эталонные интегралы
#table(
  columns: (auto, auto, auto),
  align: horizon,
  stroke: none,
  [
    $limits(integral)^(+ infinity)_1 (d x)/(x^p) #h(4pt) cases(
        p > 1 & - "сходится",
        p <= 1 & - "расходится"
    )$
  ],
  [
    $limits(integral)^1_0 (d x)/(x^p) #h(4pt) cases(
        p >= 1 & - "расходится",
        p < 1 & - "сходится"
    )$
  ],
  [
    $limits(integral)^a_b (d x)/((a-x)^p) #h(4pt) cases(
        p >= 1 & - "расходится",
        p < 1 & - "сходится"
    )$
  ],
)

= Числовые ряды
== Признаки сходимости

#table(
  columns: (auto, auto),
  align: top,
  stroke: none,
  [
    *Необх. усл. сход–ти* \ 
    $sum a_n$ сход. $==> limits(lim)_(n -> infinity) a_n = 0$.
  ],
  [
    *Крит. Коши* \ $sum a_n$ сх. $<==> forall epsilon > 0 #h(4pt) exists n_epsilon in NN$\ $forall n >= n_epsilon$, $forall p in NN #h(4pt) abs(limits(sum)_(k = n + 1)^(n + p) a_(k)) < epsilon$.
  ],
  [
    *Интегральный пр.* \ $f$ неотр. и неворзр. на $[1,+infinity) ==> limits(integral)^(+infinity)_1 f(x) d x$ и $limits(sum)f(x)$ ведут себя одинак.
  ],
  [
    *Пр. мажорации* \ $a_n$ и $b_n$ неотр., $sum b_n$ сходится, $exists C>0 #h(4pt) forall n in NN #h(4pt) abs(a_n) = C abs(b_n) ==> sum a_n$ сходится
  ],
  [
    *Сл-е пр. мажорации* \ $a_n$ и $b_n$ неотр., $sum b_n$ и $(a_n/b_n)$ сходится $==> sum a_n$ сходится
  ],
  [
    *Сл-е пр. мажорации* \ $a_n$ и $b_n$ полож., $sum b_n$ сходится, $(a_(n+1))/(a_n) <= (b_(n+1))/(b_n) ==> sum a_n$ сходится
  ],
  [
    *Пр. сравнения* \ $a_n$ и $b_n$ полож., $exists "кон." limits(lim)_(n -> infinity) (a_n)/(b_n) != 0 ==> sum a_n, sum b_n$ ведут себя одинаково
  ],
  [
    *Пр. Коши* \ $a_n$ неотр. $overline(limits(lim)_(n-> infinity)) root(n, a_n) = alpha$. $alpha < 1 ==> sum a_n$ сходится; $alpha > 1 ==> sum a_n$ расходится; $alpha = 1 ==>$ ?
  ],
  [
    *Пр. Даламбера* \ $a_n$ полож. $limits(lim)_(n-> infinity) (a_(n+1))/(a_n) = alpha$. $alpha < 1 ==> sum a_n$ сходится; $alpha > 1 ==> sum a_n$ расходится; $alpha = 1 ==>$ ?
  ],
  [
    *Пр. Дирихле* \ $a_n = o(1)$ --- монот., $limits(sum)^n_(k=1) b_k = O(1) ==> sum a_n b_n$ сходится.
  ],
  [
    *Пр. Абеля* \ $a_n = O(1)$ --- монот., $sum b_n$ cх-ся $==> sum a_n b_n$ сходится.
  ],
  [
    *Пр. Лейбница* \ $a_n = o(1)$ --- монот., $sum (-1)^n a_n$ сходится.
  ],
)

== Эталонные ряды
#table(
  columns: (auto, auto, auto),
  align: horizon,
  stroke: none,
  [
    $sum^infinity_(n=1) 1/n^p #h(4pt) cases(
        p > 1 & - "сходится",
        p <= 1 & - "расходится"
    )$
  ],
  [
    $sum^infinity_(n=1) q^n #h(4pt) cases(
        0 <= q < 1 & - "сходится",
        "иначе" & - "расходится"
    )$
  ],
)

= Функциональные ряды

#table(
  columns: (auto, auto, auto),
  align: horizon,
  stroke: none,
  [
    *Пр. Вейерштрасса* \ $forall n in NN #h(4pt) norm(f_n) <= a_n$, $sum a_n$ сходится $==>$ \ $sum f_n$ равн. сх.
  ],
  [
    *Пр. Дирихле* \ $f_n (x) arrow.b = o(1)$ \ $norm(limits(sum)_(k = n+1)^(n+p) g_k) = O(1) ==>$ \
    $sum f_n g_n$ равн. сх. 
  ],
  [
    *Пр. Абеля* \ $f_n (x) arrow.b$, $norm(f_n) = O(1)$ \ $sum g_n$ равн. сх. \
    $sum f_n g_n$ равн. сх. 
  ],
)
#block(breakable: false)[
= Степенные ряды

#table(
  columns: (auto, auto, auto),
  align: horizon,
  stroke: none,
  [
    *Формула Коши-Адамара* $ R = 1 /(overline(limits(lim)_(n -> infinity)) root(n, abs(a_n))) $
  ],
  [
   *Формула Даламбера*  $ R = limits(lim)_(n -> infinity) abs(a_n)/abs(a_(n+1)) $
  ],
)]


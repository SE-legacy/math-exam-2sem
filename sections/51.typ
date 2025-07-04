#import "../conf.typ": definition, theorem, equ
#import "@preview/cetz:0.4.0": canvas, draw, coordinate, decorations
#import "@preview/wrap-it:0.1.1": wrap-content

#let trapezoid = [
  #figure(
  caption: [трапеция первого рода $D$],
  [
    #canvas({
      import draw: *
      
      let A = (1, 1)
      let B = (3, 1)
      let E = (3, 3)
      let F = (1, 3)
      
      line((0, 0), (4, 0), fill: black, mark: (end: ">"))
      line((0, 0), (0, 4), fill: black, mark: (end: ">"))
      bezier((1, 1), (3, 1), (2, 0.3), (2, 1.7))
      bezier((1, 3), (3, 3), (2, 2.3), (2, 3.7))
      line(B, E)
      line(F, A)

      line(A, (A.at(0), 0), stroke: (paint: luma(100), dash: "dashed", thickness: 0.8pt))
      line(B, (B.at(0), 0), stroke: (paint: luma(100), dash: "dashed", thickness: 0.8pt))

      line((A.at(0), 0.1), (A.at(0), -0.1))
      line((B.at(0), 0.1), (B.at(0), -0.1))
      
      content((2, 2), text(size: 1.5em, $D$))
      content((A.at(0) - 0.3, A.at(1) - 0.2), $A$)
      content((B.at(0) + 0.3, B.at(1) - 0.2), $B$)
      content((E.at(0) + 0.3, E.at(1) + 0.2), $E$)
      content((F.at(0) - 0.3, F.at(1) + 0.2), $F$)
      content((2, 1 - 0.3), $phi_1$)
      content((2, 3 + 0.4), $phi_2$)
      content((A.at(0), -0.3), $a$)
      content((B.at(0), -0.3), $b$)
    })
  ])<fig:trapezoid>
]

#theorem(name: "Теорема (формула Грина для трапеции первого рода)")[
  Пусть замкнутое множество $D$ является трапецией первого рода, $L$ --- положительно ориентированная граница $D$, а функция $P$ и её частная производная $(diff P) / (diff y)$ непрерывны на $D$. Тогда
  
  #equ($ limits(integral.cont)_L P(x,y) d x = - limits(integral.double)_D (diff P) / (diff y) (x,y) d x d y. $, id: <eq:greens-formula1>)
][
  #wrap-content(align: right)[#trapezoid][
    Пусть 
  
    $ D = {(x,y) in RR^2: x in [a,b], #h(6pt) phi_1(x) <= y <= phi_2(x)} $

    где функции $phi_1$, $phi_2$ непрерывно дифференцируемы на $[a,b]$. Обозначим точки $A(a, phi_1(a))$, $B(b, phi_1(b))$, $E(b, phi_2(b))$, $F(a, phi_2(a))$. Положительная ориентация границы $L$ соответствует последовательности точке $A B E F A$ (@fig:trapezoid). 
  ]
  
  По определению криволинейного интеграла второго рода
  
  $ limits(integral)_(A B) P(x,y) d x = limits(integral)_a^b P lr((x, phi_1(x)), size: #125%) d x, \
  limits(integral)_(E F) P(x,y) d x = limits(integral)_b^a P lr((x, phi_2(x)), size: #125%) d x = - limits(integral)_a^b P lr((x, phi_2(x)), size: #125%) d x, \
  limits(integral)_(B E) P(x,y) d x = 0, limits(integral)_(F A) P(x,y) d x = 0. $
  
  Следовательно,
  
  $ limits(integral.cont)_L P(x,y) d x = limits(integral)_a^b P lr((x, phi_1(x)), size: #125%) d x - limits(integral)_a^b P lr((x, phi_2(x)), size: #125%) d x. $
  
  С другой стороны, сводя двойной интеграл к повторному, используя формулу Ньютона--Лейбница,
  
  $ limits(integral.double)_D (diff P) / (diff y) (x,y) d x d y = limits(integral)_a^b d x limits(integral)_(phi_1(x))^(phi_2(x)) (diff P) / (diff y) (x,y) d y = limits(integral)_a^b P lr((x,phi_2(x)), size: #125%) d x - limits(integral)_a^b P lr((x,phi_1(x)), size: #125%) d x. $
  
  Таким образом,
  
  $ limits(integral.cont)_L P(x,y) d x = - limits(integral.double)_D (diff P) / (diff y) (x,y) d x d y. $
]

#theorem(name: "Теорема (формула Грина для трапеции второго рода)")[
  Пусть замкнутое множество $D$ является трапенией второго рода, $L$ --- положительно ориентированная граница $D$, а функция $Q$ и её частная производная $(diff Q) / (diff x)$ непрерывны на $D$. Тогда
  
  #equ($ limits(integral.cont)_L Q(x,y) d y = limits(integral.double)_D (diff Q) / (diff x) (x,y) d x d y. $, id: <eq:greens-formula2>)
][
  Аналогично доказательству формулы Грина для трапеции первого рода.
]

#definition()[
  Плоское множество $D$ назовём элементарным, если прямыми, параллельными координатным осям его можно разбить на конечное число трапеций первого рода, а также конечное число трапеций второго рода.
]

#theorem(name: "Теорема (формула Грина)")[
  Пусть замкнутое множество $D$ является элементарным замкнутым множеством и $L$ --- положительно ориентированная граница $D$, которая является простым контуром. Пусть функции $P$, $Q$ и их частные производные $(diff P) / (diff y)$ и $(diff Q) / (diff x)$ непрерывны на $D$. Тогда 
  
  $ limits(integral.cont)_L P d x + Q d y = limits(integral.double)_D ((diff Q) / (diff x) - (diff P) / (diff y)) d x d y. $
][
  Пользуясь свойством аддитивности двойного интеграла, заменим интеграл по можеству $D$ суммой интегралов по частичным трапециям, на которых мы разобьём $D$.

  К интегралу по каждой трапции применим формулу $(#ref(<eq:greens-formula1>))$ или $(#ref(<eq:greens-formula2>))$. Интегралы по общим участкам границ будут суммироваться дважды, причем с противоположными ориентациями, поэтому они взаимо уничтожатся. А сумма оставшихся составит криволинейный интеграл по границе множествоа $D$. Складывая формулы $(#ref(<eq:greens-formula1>))$ и $(#ref(<eq:greens-formula2>))$, придем к формуле из условия теоремы.
]

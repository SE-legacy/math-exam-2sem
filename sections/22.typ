#import "../conf.typ": definition, theorem

#definition()[
  Отображение $NN$ во множество функций, определенных на множестве $X$ называется функциональной последовательностью $(f_n)$, где $forall n in NN #h(6pt) f_n$ --- функция, определенная на $X$.
]

#definition()[
  Последовательность $(f_n)$ сходится в точке $x_0 in X$, если сходится числовая последовательность $f_n (x)$.
]

#definition()[
  Последовательность $(f_n)$ поточечно сходится на множестве $M subset X, $ если последовательность $(f_n)$ сходится во всех точках множества $M$.
]

#definition()[
  Пусть функция $f$ определена на множестве $X$. Равномерная норма обозначается символом $norm(f)$, и справедливо равенство
  
  $ norm(f) = sup_(x in X) |f(x)|. $
]

*Свойства равномерной нормы:*

+ $forall x in X #h(6pt) abs(f(x)) <= norm(f)$.

+ $norm(f) < +infinity <==> f "ограничена".$

+ $norm(f) >=0$, причем $norm(f) = 0 <==> forall x in X #h(6pt) f(x) = 0$.

+ $forall lambda in RR  #h(6pt) norm(lambda f) = abs(lambda) dot norm(f)$.

+ $norm(f+g) <= norm(f) + norm(g)$.

+ $norm(f dot g) <= norm(f) dot norm(g)$.

#definition()[
  Последовательность $(f_n)$ равномерно сходится к функции $f$, если

  $ lim_(n -> infinity) norm(f_n - f) = 0, $
  
  и обозначается как $f_n arrows f$.
]

#theorem(
  name: "Теорема (критерий Коши равномерной сходимости)",
  breakline: true
)[
  Последовательность $(f_n)$ равномерно сходится к функции $f$ тогда и только тогда, когда
  
  $ forall epsilon > 0 #h(6pt) exists n_(epsilon) in NN #h(6pt) forall n >= n_(epsilon) #h(6pt) forall m >= n_(epsilon) #h(6pt) norm(f_n - f_m) < epsilon $
][
  Необходимость. Пусть $epsilon > 0$. Т.к. $f_n arrows f$, то
  
  $ exists n_(epsilon) in NN #h(6pt) forall n >= n_(epsilon) #h(6pt) forall x in X #h(6pt) abs(f_n (x) - f(x)) < epsilon/2. $
  
  Тогда $forall x in X #h(6pt) forall m >= n_(epsilon) $
  $ abs(f_n (x) - f_m (x)) = abs(f_m (x) - f(x) + f(x) - f_n (x)) <= abs(f_m (x) - f(x)) + abs(f_n (x) - f(x)) < epsilon/2 + epsilon/2 = epsilon, $
  
  т.е. выполняется условие критерия Коши.

  Достаточность. Условие критерия Коши равносильно
  
  $ forall epsilon > 0 #h(6pt) exists n_(epsilon) in NN #h(6pt) forall n >= n_(epsilon) #h(6pt) forall m >= n_(epsilon) #h(6pt) forall x in X #h(6pt) abs(f_m (x) - f_n (x)) < epsilon, $
  
  т.е. $forall x in X$ последовательность $lr((f_n (x)), size: #125%)$ фундаментальна, что эквивалентно её сходимости. 
  
  Пусть $f$ --- поточечный предел последовательности $lr((f_n (x)), size: #125%)$. Переходя к пределу при $m -> infinity$ в предыдущем условии, получим

  $ forall epsilon > 0 #h(6pt) exists n_(epsilon) in NN #h(6pt) forall n >= n_(epsilon) #h(6pt) forall x in X #h(6pt) abs(f(x) - f_n (x)) <= epsilon, $
  
  т.е. $f_n arrows f$.
]

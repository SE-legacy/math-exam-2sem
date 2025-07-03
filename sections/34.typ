#import "../conf.typ": definition, theorem 

#definition()[
  Непрерывное отображение отрезка в пространстве $RR^n$ называется кривой. 
  
  Обозначим кривую буквой $Gamma$, а вектор-функцию $overline(gamma)(t) = (gamma_1 (t), dots, gamma_n (t))$. Будем писать также $Gamma = Gamma_(overline(gamma))$.

  Пусть функция $overline(gamma)$ определена на отрезке $[a, b]$. Множество значений вектор-функции $overline(gamma)([a, b])$ называют носителем кривой $Gamma$. Точкой кривой называют пару $(t, overline(gamma)(t))$, переменную $t$ называют параметром, а функцию $overline(gamma)$ --- параметрическим представлением кривой $Gamma$.
]

#definition()[
  Кривая $Gamma = Gamma_(overline(gamma))$ называется дифференцируемой (непрерывно дифференцируемой), если вектор-функция $overline(gamma)$ дифференцируема (непрерывно дифференцируема) на $[a, b]$.
]

#definition()[
  Точкой кривой $Gamma$, в которой $overline(gamma)' (t) = overline(0)$, называется особой.
]

#definition()[
  Непрерывно дифференцируемая кривая без особых точек называется гладкой кривой.
]

#definition()[
  Пусть $Gamma = Gamma_(overline(gamma))$ --- кривая в пространстве $RR^n$ и $a = t_0 < t_1 < dots < t_k = b$. Тогда сумма 
  
  $ sum_(i=1)^k abs(overline(gamma) (t_i) - overline(gamma) (t_(i-1))). $

  равна длине ломаной с вершинами в точках $M_i (gamma_1 (t_i), gamma_2 (t_i)), #h(6pt) i = 0, 1, dots, k$, лежащих на кривой $Gamma$. Такую ломаную называют вписанной в кривую $Gamma$.
]

#definition()[
  Кривую $Gamma$ называют спрямляемой, если длины всех ломаных, вписанных в эту кривую, образуют ограниченное множество.
]

#definition()[
  Длиной спрямляемой кривой $Gamma$ называют верхнюю грань длин всех ломаных, вписанных в эту кривую, и обозначают символом $abs(Gamma)$.
]

#theorem(name: "Теорема (о длине кривой)")[
  Если $Gamma = Gamma_overline(gamma), #h(6pt) t in [a,b]$ --- непрерывно дифференцируемая кривая, то ее длина выражается равенством 
  
  $ abs(Gamma) = limits(integral)_a^b abs(overline(gamma)'(t)) d t. $
][
  Для любого разбиения $a = t_0 < t_1 < dots < t_n = b$ отрезка $[a, b]$ имеем 
  
  $ sum_(i=1)^n abs(overline(gamma)(t_i) - overline(gamma)(t_(i-1))) = sum_(i=1)^n abs(limits(integral)_(t_(i-1))^t_i overline(gamma)'(t) d t) <= sum_(i=1)^n limits(integral)_(t_(i-1))^t_i abs(overline(gamma)'(t)) d t = limits(integral)_a^b abs(overline(gamma)'(t)) d t. $ 
  
  Переходя к верхней грани по всевозмодным разбиениям отрезка, получим 
  
  $ abs(Gamma) <= limits(integral)_a^b abs(overline(gamma)'(t)) d t. $ 
  
  Докажем справедливость противоположного неравенства. Пусть $epsilon > 0$. В силу равномерной непрерывности функции $overline(gamma)'$, найдется такое $delta > 0$, что при $abs(s-t) < delta$ выполняется неравенство $abs(overline(gamma)'(s) - overline(gamma)'(t)) < epsilon$. 
  
  Возьмем разбиение с диаметром, меньшим $delta$. Тогда $forall t in [t_(i-1), t_i]$
  
  $ abs(overline(gamma)')(t) = abs(lr((overline(gamma)'(t) - overline(gamma)'(t_i)), size: #125%) + overline(gamma)'(t_i)) <= abs(overline(gamma)'(t) - overline(gamma)'(t_i)) + abs(overline(gamma)'(t_i)) <= abs(overline(gamma)'(t_i)) + epsilon. $
  
  Далее получим 
  
  $ limits(integral)_(t_(i-1))^t_i abs(overline(gamma)'(t)) d t - epsilon Delta t_i <= abs(overline(gamma)'(t_i)) Delta t_i = abs(limits(integral)_(t_(i-1))^t_i lr((overline(gamma)'(t) + overline(gamma)'(t_i) - overline(gamma)'(t)), size: #125%) d t) <= \
  <= abs(limits(integral)_(t_(i-1))^(t_i) overline(gamma)'(t) d t) + abs(limits(integral)_(t_(i-1))^(t_i) lr((overline(gamma)'(t_i) - overline(gamma)'(t)), size: #125%) d t) <= abs(overline(gamma)(t_i) - overline(gamma)(t_(i-1))) + epsilon Delta t_i. $
  
  и
  
  $ limits(integral)_a^b abs(overline(gamma)'(t)) d t = sum_(i=1)^n limits(integral)_(t_(i-1))^(t_i) abs(overline(gamma)'(t)) d t <= sum_(i=1)^n abs(overline(gamma)(t_i) - overline(gamma)(t_(i-1))) + 2 epsilon (b-a) <= abs(Gamma) + 2 epsilon (b-a). $
  
  Тогда в силу произвольности $epsilon > 0$, имеем 
  
  $ limits(integral) abs(overline(gamma)'(t)) d t <= abs(Gamma). $
  
  И так мы получаем, что $limits(integral) abs(overline(gamma)'(t)) d t = abs(Gamma)$.
]

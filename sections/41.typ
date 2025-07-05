#import "../conf.typ": theorem, consequence, block_base

#block_base("Утверждение", false, [
  Пусть функция $f$ дифференцируема на открытом множестве $G$, и отрезок, соединяющий точки $overline(x)$ и $overline(x)_0$, целиком содержится во множестве $G$, $overline(h) = overline(x) - overline(x)_0$. Тогда для функции $F(t) = f(overline(x)_0 + t overline(h))$, определенной для всех $t in [0, 1]$ справедливо

  $ F^((n)) (t) = d^n_overline(h) f(overline(x)_0 + t overline(h)). $
])

#theorem(name: "Теорема (формула Тейлора)")[
  Пусть функция $f$ $n$-дифференцируема в некоторой окрестности $O(overline(x)_0)$. Тогда при любом $overline(x) in O(overline(x)_0)$ справедливо равенство, называемое формулой Тейлора с остаточным членом в форме Лагранжа:
  
  $ f(overline(x)) = sum_(k=0)^(n-1) 1/k! d_(overline(h))^k f(overline(x)_0) + 1/n! d_(overline(h))^n f(overline(x) + theta overline(h)), $

  где $overline(h) = overline(x) - overline(x)_0, quad theta in (0,1), quad (d_overline(h)^0 f(overline(x)_0) = f(overline(x)_0))$.
][
  Рассмотрим функцию $F(t) = f(overline(x)_0 + t overline(h))$ из предыдущего утверждения и воспользуемся формулой Тейлора с остаточным членом в форме Лагранжа. Тогда 
  
  $ f(overline(x)) = F(1) = limits(sum)_(k=0)^n 1/k! F^((k)) (0) + 1/n! F^((n))(theta) = limits(sum)_(k=0)^(n-1)1/k! d_(overline(h))^k f(overline(x)_0) + 1/n! d_(overline(h))^n f(overline(x) + theta overline(h)), quad theta in (0,1). $
]

#consequence()[
  Если функция $f$ $n$-непрерывно дифференцируема в окрестности точки $overline(x)_0$, то справедливо равенство, называемое формулой Тейлора--Пеано:
  
  $ f(overline(x)) = limits(sum)_(k=0)^n 1/k! d_overline(h)^k f(overline(x)_0) + o(abs(overline(h))^n). $
][]

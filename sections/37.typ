#import "../conf.typ": theorem

#theorem(name: "Теорема (о дифф. слож. функ.)")[
  Пусть $f: RR^m -> RR, #h(6pt) overline(g): RR^k -> RR^m$, т.е. 
  
  $ (f compose overline(g)) (overline(t)) = f lr((g_1 (overline(t)), dots, g_m (overline(t))), size: #125%) = f lr((g_1 (t_1, dots, t_k), dots, g_m (t_1, dots, t_k)), size: #125%). $
  
  И пусть функция $f$ дифференцируема в точке $overline(x)_0$, а функции $g_i$ при всех $i = 1, dots, m$ дифференцируемы в точке $overline(t)_0$ и $overline(x)_0 = overline(g) (overline(t)_0)$. Тогда функция $f compose overline(g)$ дифференцируема в точке $overline(t)_0$ и при любом $j = 1, dots, k$:

  $ (diff (f compose overline(g)))/(diff t_j) (overline(t)_0) = (diff f)/(diff x_1) (overline(x)_0) (diff g_1)/(diff t_j) (overline(t)_0) + 
  (diff f)/(diff x_2) (overline(x)_0) (diff g_2)/(diff t_j) (overline(t)_0) + dots + (diff f)/(diff x_m) (overline(x)_0) (diff g_m)/(diff t_j) (overline(t)_0). $
][
  Т.к. функция $f$ дифференцируема в точке $overline(x)_0$, то 
  
  $ f(overline(x)) - f(overline(x)_0) = sum_(i=1)^m phi_i (overline(x)) (x_i - x_i^0), $

  где функции $phi_i$ $(i = 1, dots, m)$ непрерывны в точке $overline(x)_0$ и $phi_i (overline(x)_0) = (diff f)/(diff x_i) (overline(x)_0)$.

  Т.к. $overline(x) = overline(g) (t)$ и $overline(x)_0 = overline(g) (t_0)$, то 
  
  $ (f compose overline(g)) (overline(t)) - (f compose overline(g)) (overline(t)_0) = f lr((overline(g) (t)), size: #125%) - f lr((overline(g) (overline(t)_0)), size: #125%) = \
  f lr((g_1(overline(t)), dots, g_m (overline(t))), size: #125%) - f lr((g_1(overline(t)_0), dots, g_m (overline(t)_0)), size: #125%) = sum_(i=1)^m phi_i lr((overline(g) (overline(t))), size: #125%) lr((g_i (overline(t)) - g_i (overline(t)_0)), size: #125%). $

  Т.к. функции $g_i$ при всех $i = 1, dots, m$ дифференцируемы в точке $overline(t)_0$, то существуют непрерывные в точке $overline(t)_0$ функции $psi_(i j) (overline(t))$ такие, что
  
  $ g_i (overline(t)) - g_i (overline(t)_0) = limits(sum)_(j=1)^k psi_(i j) (overline(t))(t_j - t_j^0), $

  и $psi_(i j)(overline(t)_0) = (diff g_i)/(diff t_j) (overline(t)_0)$. Тогда 
  
  $ (f compose overline(g)) (overline(t)) - (f compose overline(g)) (overline(t)_0) = sum_(i=1)^m phi_i lr((overline(g) (overline(t))), size: #125%) (sum_(j=1)^k psi_(i j) (overline(t)) (t_j - t_j^0)) = \
  sum_(j=1)^k (sum_(i=1)^m phi_i lr((overline(g) (overline(t)) psi_(i j) (overline(t))), size: #125%)) (t_j - t_j^0). $

  Функции $phi_i (overline(g) (overline(t))) psi_(i j) (overline(t))$ непрерывны в точке $overline(t)_0$ и последнее равенство означает условие дифференцируемости функции $f compose overline(g)$ в точке $overline(t)_0$. И при всех $j = 1, dots, k$ 
  
  $ (diff (f compose overline(g)))/(diff t_j) (overline(t)_0) = limits(sum)_(i=1)^m phi_i (overline(g) (overline(t)_0)) psi_(i j) (overline(t)_0) = limits(sum)_(i=1)^m phi_i (overline(x)_0) psi_(i j) (overline(t)_0) = limits(sum)_(i=1)^m (diff f)/(diff x_i) (overline(x)_0) (diff g_i)/(diff t_j) (overline(t)_0). $
]

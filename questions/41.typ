= №41. Формула Тейлора с остаточным членом в форме Лагранжа и форме Пеано.

*Т. (Формула Тейлора)*: Пусть функ. $f$ n-дифф. в нек. окр. $O(overline(x)_0)$. Тогда $forall overline(x) in O(overline(x)_0)$: $f(overline(x)) = limits(sum)_(k=0)^(n-1)1/k! d_(overline(h))^k f(overline(x)_0) + 1/n! d_(overline(h))^n f(overline(x) + theta overline(h))$, где $overline(h) = overline(x) - overline(x)_0, theta in (0,1), d_overline(h)^0 f(overline(x)_0) = f(overline(x)_0)$. Это формула Тейлора с остат. членом в форме Лагранжа \

*Док-во*: Рассмотрим функ. $F(t) = f(overline(x)_0 + t overline(h))$ и воспользуемся формулой Тейлора с остат. членом в форме Лагранжа. Тогда $f(overline(x)) = F(1) = limits(sum)_(k=0)^n 1/k! F^((k)) (0) + 1/n! F^((n))(theta) = limits(sum)_(k=0)^(n-1)1/k! d_(overline(h))^k f(overline(x)_0) + 1/n! d_(overline(h))^n f(overline(x) + theta overline(h)), theta in (0,1)$

*Следствие*: Если функ. $f$ n-непр. дифф. в окр. т. $overline(x)_0$, то справедливо формула Тейлора-Пеано $f(overline(x)) = limits(sum)_(k=0)^n 1/k! d_overline(h)^k f(overline(x)_0) + o(abs(overline(h))^n)$

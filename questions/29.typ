= №11. Условная сход-ть несобст. инт-ов. Признак Дирихле и признак Абеля сход-ти несобст. инт-ов. 

*Опр.:* несобст. инт. $limits(integral)_(a)^(omega) f(x) d x$ наз. условно сходящимся, если он сход., а $limits(integral)_(a)^(omega) |f(x)| d x$ расход.\ 
Пусть f, g, g' непр. на $[a, omega)$, $F(b) = limits(integral)_(a)^(b) f(x) d x$. Тогда по ф–ле инт-я по частям: $limits(integral)_(a)^(b) f(x)g(x) d x = g(b)F(b) - g(a)F(a) - limits(integral)_(a)^(b) g'(x)F(x) d x$.\ 
*Утверждение:* Если сущ. $limits(integral)_(a)^(omega) g'(x)F(x) d x = A$ и сущ. конечный предел $limits(lim)_(b -> omega) g(b)F(b) = B$, то сущ. несобст. инт. $limits(integral)_(a)^(omega) f(x)g(x) d x = B - g(a)F(a) - A$.

*Т. (признак Дирихле):* $f, g, g'$ непр. на $[a, omega)$, $F(b) = limits(integral)_(a)^(b) f(x) d x$ огр. на $[a, omega)$, $g(x) -> 0$, монотонно убывая, при $x -> omega ==> limits(integral)_(a)^(omega) f(x)g(x) d x$ сход.\ 
*Док-во:* $limits(lim)_(b -> omega) g(b)F(b) = 0$. Т.к. $g'(x) <= 0$, то $limits(lim)_(b -> omega) limits(integral)_(a)^(b) |g'(x)| d x = -limits(lim)_(b -> omega) limits(integral)_(a)^(b) g'(x) d x = -limits(lim)_(b -> omega) [g(b) - g(a)] = g(a)$, т.е. $limits(integral)_(a)^(omega) |g'(x)| d x$ сход. Т.к. ф-ция $F$ огр., то по признаку мажорации $limits(integral)_(a)^(omega) |g'(x)F(x)| d x$ сход. $==> limits(integral)_(a)^(omega) g'(x) F(x) d x$ сход. Осталось воспользоваться предыдущим утверждением. 

*Т.(признак Абеля):* $f, g, g'$ непр. на $[a, omega)$, инт. $limits(integral)_(a)^(omega) f(x) d x$ сход., $g$ монотонна и ограничена на $[a, omega) ==> limits(integral)_(a)^(omega) f(x)g(x) d x$ сход.\
*Док-во:* Д О К А З А Т Ь $quad$ С А М О С Т О Я Т Е Л Ь Н О #emoji.skull.

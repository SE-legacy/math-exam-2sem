#heading(level: 1)[25]

*T. (признак Дирихле равн. сх. функ. ряда)*: Пусть $forall x in X$ $f_n (x) arrow.b$, $||limits(sum)_(k = n+1)^(n+p) g_k || = O(1)$, $||f_n|| = o(1)$.
Тогда ряд $sum f_n g_n$ равн. сх.

*Док-во*: Пусть $G_n = limits(sum)_(k = 1)^(n) g_k$, $G_(n,k) = limits(sum)_(i = 1)^(k) g_(n+i)$. 
$exists M$ $forall n in NN$ $||G_n|| <= M$ и $forall n in NN$ $forall k in NN$ $||G_(n,k)|| = ||G_(n+k) - G_n|| <= ||G_(n+k)|| + ||G_n|| <= 2M$.

Тогда $forall x in X$ $abs(limits(sum)_(k = n + 1)^(n + p) f_k (x) g_k (x)) = abs(limits(sum)_(k=1)^(p-1) (f_(n+k) (x) - f_(n+k+1) (x)) G_(n,k) (x) + f_(n+p) (x) G_(n, p) (x))$
$<= 2M limits(sum)_(k = 1)^(p-1) (f_(n+k) (x) - f_(n+k+1) (x)) + f_(n+p) (x) dot 2M = 2M f_(n+1) (x) <= 2M ||f_(n+1)||$. 
Пусть $epsilon > 0$. Тогда $exists n_(epsilon)$ $forall n >= n_(epsilon)$ $||f_n|| < epsilon$ и 
$forall n >= n_(epsilon)$ $forall p in NN$ $forall x in X$ $abs(limits(sum)_(k=n+1)^(n+p) f_k (x) g_k (x)) <= 2M ||f_(n+1)|| < 2M epsilon$. 
Ряд $sum f_n g_n$ равн. сх. по крит. Коши

*Т. (признак Абеля равн. сх. функ. ряда)*: Пусть $forall x in X$ $f_n (x) arrow.b$, ряд $sum g_n$ равн. сх. и $||f_n|| = O(1)$. Тогда ряд $sum f_n g_n$ равн. сх.

*Док-во*: Пусть $G_n = limits(sum)_(k = 1)^(n) g_k$, $G_(n,k) = limits(sum)_(i = 1)^(k) g_(n+i)$, $M > 0$ такое, что $forall n in NN$ $||f_n <= M||$, и $epsilon > 0$. 
Согласно крит. Коши равн. сх. функ. ряда: $exists n_(epsilon) in NN$ $forall n >= n_(epsilon)$ $forall k in NN$ $forall x in X$ 
$abs(limits(sum)_(k=n+1)^(n+p) f_k (x) g_k (x)) <= 2M ||f_(n+1)|| < 2M epsilon$. Ряд $sum f_n g_n$ равн. сх. по крит. Коши

= Опр. инт. суммы Римана и инт–а Римана. Необход. усл.интегр–сти.
$[a,b] in RR, a = x_(0) < x_(1)<...<x_(n-1)<x_(n)=b,,P=P_([a,b])=( x_(k) )^n_(k=0)-"разбение" [a,b]$
$Delta_(k)=[x_(k-1),x_(k)],Delta x_(k)=x_(k)-x_(k-1), (k=1,...,n).d=d(P)=max_(1leq kleq n)Delta x_(k)–диаметр$
$разб–я P. xi_(P)=( xi_(k) )^n_(k=1),xi_(k)inDelta_(k),(k=1,...,n)–сист.промеж.точек,соотв.разб–ю P.$ |
$Пусть f опр.на [a,b]. Сумма sigma(P)=sigma(P,xi_(P))=sigma(f,P,xi_(P))=Sigma^n_(k=1)f(xi_(k))Delta x_(k) наз.инт.суммой$
$Римана ф–ции f.$|$I=lim_( d to 0 )sigma(P),если forallepsilon>0existsdelta>0forall(P,xi_(P)) (d(P)<deltaRightarrow |sigma(P,xi_(P))-I|<epsilon).$
$Число I наз.пределом инт.сумм Римана. f в этом случ.наз.инт.по Риману на [a,b],а I–инт.$
$Римана и обозн.int_(a)^bf(x)dx=I$|$Т.(необ.усл.инт–сти ф–ции):f–инт.на[a,b]Rightarrow f огр.на[a,b]$
$Д–во:от прот.Пусть f неогр.на[a,b],P=P_([a,b])=( x )^n_(k=0).Тогдаexists Delta_(i):f неогр.наDelta_(i)$
$sigma(P,xi_(P))=Sigma^n_(k=1)f(xi_(k))Delta x_(k)=Sigma^n_(k=1,kneq i)f(xi_(k))Delta x_(k)+f(xi_(i))Delta x_(i)=f(xi_(i))Delta x_(i)+ARightarrow|sigma(P,xi_(P))|=$
$=|f(xi_(i))Delta x_(i)+A|geq|f(xi_(i))|Delta x_(i)-|A|>M forall M>0.Тогдаexists xi_(i)inDelta_(i) такая,что$
$|f(xi_(i))|> frac(M+|A|, Delta x_(i)).Rightarrow |sigma(P)|>MRightarrowпредел инт.сумм не сущ, что прот.усл.инт–сти$


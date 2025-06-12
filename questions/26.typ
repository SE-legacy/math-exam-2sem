= №3. Крит. интегрируемости

*Т. (крит. инт-сти)*: $f$ опр. и огр. на $[a,b] ==>$ След. усл-я эквивалентны:
+ $f$ интегрируема
+ $forall epsilon > 0 #h(4pt) exists P #h(4pt) S(P) - s(P)<epsilon$
+ $underline(I) = overline(I)$, при этом $underline(I) = overline(I) = limits(integral)^b_a f(x) d x$
*Док-во*: $1==>2$. $f$ интегрируема $==> forall epsilon>0 #h(4pt) exists delta >0 #h(4pt) forall(P, xi_p) #h(4pt)$ \ $(d(P)< delta ==> abs(sigma(P, xi_P) -I) < epsilon/4) stretch(=>)^"св-во 4"_("сумм Дарбу")$ для $P #h(4pt) exists xi'_P, xi''_P:$ \ $S(P)-sigma(P,xi'_P) < epsilon/4, #h(4pt) sigma(P,xi''_P) - s(P) < epsilon/4$, но $abs(sigma(P,xi'_P)- I) < epsilon/4, #h(4pt) abs(I-sigma(P,xi''_P)) <epsilon/4 $ $==> abs(S(P)-s(P))=abs((S(P)-sigma(P,xi'_P)) + (sigma(P,xi'_P) - I) + (I-sigma(P,xi''_P)) + (sigma(P,xi''_P) - s(P))) < 4 dot epsilon/4 = epsilon$.\
$2==>3$.  $forall epsilon>0 #h(4pt) exists P #h(4pt) S(P) - s(P)<epsilon$. $s(P)<=underline(I) <= overline(I) <= S(P) ==> 0 <= overline(I) - underline(I) <= S(P) - s(P) < epsilon$. Т. к. $epsilon$ --- произв., то $overline(I) - underline(I) = 0 <==> underline(I) = overline(I)$.\
$3==>1$. Пусть $underline(I) = overline(I) = A stretch(=>)^"осн. лемма"_"Дарбу" forall epsilon>0 #h(4pt) exists delta>0 #h(4pt) forall P #h(4pt) (d(P)< delta => (S(P)-A < epsilon and A-s(P) < epsilon)) stretch(=>)^"св-во 1"_("сумм Дарбу") A-epsilon<s(P)<= sigma(P,xi_P)<= S(P) < A + epsilon ==> abs(sigma(P, xi_P)-A) < epsilon$, т. е. $limits(lim)_(d->0) sigma(P, xi_P) = A ==> f$ интегрируема, $limits(integral)^b_a f(x) d x = A = underline(I) = overline(I)$.


\paragraph{题目}

求解下列微分方程.

(1) $y''=2x-\cos x, y(0)=1, y'(0)=-1$;

(2) $xy''+(y')^2-y'=0, y(1)=1-\ln 2, y'(1)=\frac{1}{2}$;

(3) $y''=3\sqrt{y}, y(0)=1, y'(0)=2$;

(4) $(1+x^2)y''-2xy'=0$;

(5) $y''+\frac{2}{1-y}(y')^2=0$;

(6) $(y''')^2+(y'')^2=1$;

(7) $xy''-y'\ln y'+y'=0$;

(8) $(1+x^2)y''+(y')^2=-1$;

(9) $(y'')^2-y'=0$.

**解**

(1) 等式左右两边积分, 可得 $y' = x^2-\sin x + C_1$. 由 $y'(0)=-1$ 得 $C_1 = -1$, 故 $y'=x^2-\sin x - 1$. 等式左右两边再次积分, 可得 $y=\frac{1}{3}x^3+\cos x - x + C_2$. 由 $y(0)=1$ 得 $C_2 = 0$, 故 $y = \frac{1}{3}x^3 + \cos x - x$.

(2) 设 $p = y'$, 则有 $xp' + p^2 - p = 0$, 即 $\frac{\text{d}{p}}{p - p^2} = \frac{\text{d}{x}}{x}$. 化简为 $\left(\frac{1}{p} - \frac{1}{p - 1}\right)\text{d}{p} = \frac{\text{d}{x}}{x}$ 后, 积分得 $\ln\left|\frac{p-1}{p}\right| = \ln \left|x\right| + C_1$, 此即 $\frac{p - 1}{p} = \frac{C_2}{x}$. 由于 $p(1)  = y'(1) = \frac{1}{2}$, 因此 $C_2 = -1$. 故 $p = y' = 1 - \frac{1}{x + 1}$. 再次积分得 $y = x - \ln(x + 1) + C$. 由于 $y(1) = 1 - \ln 2$, 故 $C = 0$. 所以 $y = x - \ln(x + 1)$.

(3) 设 $p = y'$, 则有 $p\frac{\text{d}{p}}{\text{d}{y}} = 3\sqrt{y}$, 即 $p\text{d}{p} = 3\sqrt{y}\text{d}{y}$. 积分可得 $\frac{1}{2}p^2=2y^{\frac{3}{2}}+C_1$. 由 $y'(0) = p(0) = 2$ 得 $C_1 = 0$, 故 $y' = p = 2y^{\frac{3}{4}}$(负值舍去). 此即 $\frac{\text{d}{y}}{y^{\frac{3}{4}}} = 2\text{d}{x}$. 积分得 $4\sqrt[4]{y} = 2x + C_2$. 由于 $y(0) = 1$, 故 $C_2 = 4$. 所以 $y = \left(\frac{1}{2}x + 1\right)^4$.

(4) 注意到

$$
\left(\frac{y}{1 + x^2}\right)' = \frac{(1 + x^2)y'' - 2xy'}{(1 + x^2)^2} = 0
$$

因此 $y' = C_1(1 + x^2)$, 积分得 $y = C_1(\frac{1}{3}x^3 + x + C)$, 这等价于 $y = C_1(\frac{1}{3}x^3 + x) + C_2$.

(5) 设 $p = y'$, 则有 $p\frac{\text{d}{p}}{\text{d}{y}} + \frac{2}{1-y}p^2=0$. 这个方程可以化简为 $\frac{\text{d}{p}}{p} = \frac{2\text{d}{y}}{y-1}$. 积分得 $\ln \left|p\right| = 2\ln\left|y - 1\right| + C_1$ 即 $\left|p\right| = e^{C_1}(y-1)^2$. 由于 $p \equiv 0$ 也为方程的解, 故方程的解可表示为 $p = C_2(y-1)^2$. 因此 $\frac{\text{d}{y}}{\text{d}{x}} = C_2(y - 1)^2$, 即 $\frac{\text{d}{y}}{(y - 1)^2} = C_2\text{d}{x}$. 积分得 $\frac{1}{1 - y} = C_2 x + C_3$. 故原方程的解为 $y = 1 - \frac{1}{C_2 x + C_3}$.

(6) 设 $p = y''$, 则有 $(p')^2 + p^2 = 1$, 即 $\frac{\text{d}{p}}{\sqrt{1 - p^2}} = \pm \text{d}{x}$, 或 $p^2 \equiv 1$.

对于前者而言, 积分得 $x = \arcsin p - C_1$, 即 $y'' = p = \sin(x + C_1)$(没有正负号是因为可以取 $C_1\gets C_1 + \pi$ 得到负号). 积分得 $y' = -\cos(x + C_1) + C_2$, 再积分得 $y = -\sin(x + C_1) + C_2 x + C_3$.

对于后者而言, 易知有解 $y = \pm \frac{1}{2}x^2 + C_1 x + C_2$.

(7) 注意到

$$
\left(\frac{\ln y' - 1}{x}\right)' = \frac{\left(\frac{y''}{y'}\right)x-\ln y' + 1}{x^2} = \frac{xy''-y'\ln y' + y'}{x^2y'} = 0
$$

因此 $\frac{\ln y' - 1}{x} = C_1$, 即 $\ln y' - 1 = C_1 x$, 化简得 $\text{d}{y} = e^{C_1 x + 1}\text{d}{x}$. 积分得 $y = \frac{1}{C_1}e^{C_1 x + 1} + C_2$.

(8) 设 $p = y'$, 则有 $1+p^2+p'(1+x)^2=0$, 即 $\frac{\text{d}{p}}{1+p^2} = -\frac{\text{d}{x}}{1+x^2}$. 积分得 $\arctan p = -\arctan x + C$, 即 $\frac{x + p}{1 - xp} = \tan C = C_1$. 化简得 $p = \frac{C_1 - x}{1 + C_1 x}$, 积分得 $y = \ln(1 + C_1 x) - \frac{1}{C_1}\cdot \frac{1}{1 + C_1 x} +C_2(C_1 \neq 0)$, 或 $y = -\frac{1}{2}x^2 + C_2(C_1 = 0)$.

(9) 设 $p = y'$, 则有 $(p')^2 = p$, 即 $p' = \pm \sqrt{p}$, 化简得 $\frac{\text{d}{p}}{\sqrt{p}} = \pm \text{d}{x}$, 或 $p \equiv 0$.

对于前者而言, 积分得 $x = \pm 2\sqrt{p} + C_1$, 即 $y' = p = \frac{1}{4}(x - C_1)^2$, 再次积分得 $y = \frac{1}{12}(x - C_1)^3 + C_2$.

对于后者而言, 易知有解 $y = C_3$.

# Eletromagnetismo clássico

## Formulação axiomática

### Postulado: Lei da força de Lorentz

Existem campos vetoriais
$\vec E\in\mathfrak X(\mathcal V_4; T\mathcal V_3)$ e $\vec B\in\mathfrak X(\mathcal V_4; T\mathcal V_3)$,
chamados respectivamente de campos elétrico e fluxo magnético,
tais que a força $\vec F(t)$ no instante $t$ imprimida sobre uma partícula movendo-se em uma
trajetória ${x:\mathbb T\rightarrow\mathcal V_3}$ é

$$
\vec F(t) \propto \vec E\circ x(t) + \dot x(t)\times\vec B\circ x(t).
$$

Observações:
* A constante de proporcionalidade é chamada de carga elétrica da partícula.
  Atualmente essa é uma propriedade intrínseca das partículas e portanto a carga
  de cada partícula deve ser obtida experimentalmente.
* Dado um corpo extenso que ocupa uma região $\Omega_t$ do espaço no intante $t$
  que se move de acordo com a lei da força de Lorentz, seja
  $\vec v:\Omega\rightarrow T\mathcal V_3$ o seu campo de velocidades.
  A carga total desse corpo é definida por
  ${Q(\Omega_t) = \int_{\Omega_t} \rho_Q \mathrm{vol}}$
  onde o campo escalar $\rho_Q:\Omega\rightarrow\mathbb R$
  é chamado de densidade de carga elétrica.
* A densidade de força sobre o corpo extenso é dada pela 1-forma diferencial
  $f = \rho_Q ~ \eta^{\flat}(\vec E + \vec v\times\vec B)$.

### Postulado: Lei da conservação da carga

Não existe nenhum processo pelo qual a carga elétrica possa ser criada ou destruída.

Isto é, as expressões para a conservação da carga nas suas formas integral e diferencial
são
$$
\frac{d}{dt} \int_{\Omega_t} \rho_Q \mathrm{vol} = 0
\qquad\text{e}\qquad
\frac{\partial}{\partial t}\rho_Q + \vec\nabla\cdot\vec J = 0,
$$
onde $\vec J = \rho_Q \vec v$ é a densidade de corrente elétrica.

### Lei da conservação da energia

Considerando que cada ponto do corpo extenso possui uma vizinhança
onde é possível verificar o equilíbrio termodinâmico, a energia interna
do corpo é definida por
${U(\Omega_t) = \int_{\Omega_t} \rho_U \mathrm{vol}}$,
onde o campo escalar $\rho_Q:\Omega\rightarrow\mathbb R$
é chamadop de densidade de enegia.

De acordo com a primeira lei da termodinâmica a variação da
energia interna no corpo é a potência total da força de Lorentz,
desde que ele se move de acordo com tal força.


$$
\frac{d}{dt} \int_{\Omega_t} \rho_Q \mathrm{vol} = \int_{\Omega_t} f(\vec v) ~ \mathrm{vol}
\qquad\text{e}\qquad
\frac{\partial}{\partial t}\rho_U + \vec\nabla\cdot\vec S = \vec E\cdot\vec J,
$$
onde $\vec S = \rho_U \vec v$ é...
A segunda igualdade se dá pelo fato de que
$\eta^{\flat}(\vec v\times\vec B)(\vec v) = 0$ e portanto
$f(\vec v) = \rho_Q ~ \eta^{\flat}(\vec E)(\vec v) = \eta^{\flat}(\vec E)(\rho_Q\vec v) = \vec E\cdot\vec J$.

## Equações de Maxwell

### Leis de Gauss

...calcular os escoos dos campos elétrico e magnético, definidos por,

$$
\Phi_E(\Sigma_t) = \int_{\Sigma_t} \vec E \lrcorner \mathrm{vol}
\quad\text{e}\quad
\Phi_B(\Sigma_t) = \int_{\Sigma_t} \vec B \lrcorner \mathrm{vol},
$$

através do corpo extenso. Para isso

$$
\operatorname{div}(\vec E) = \frac{Q}{\varepsilon_0}
$$

$$
\operatorname{div}(\vec B) = 0
$$
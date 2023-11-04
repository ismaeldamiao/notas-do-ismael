# Cinemática

A cinemática é a área da física que estuda
o movimento dos corpos sem se preocupar
com as suas causas.

Neste capítulo apresentarei os conceitos básicos
relacionádos à cinemática.

## Introdução

### Posição

A posição de um corpo é uma propriedade do corpo
que é descrita por um observador como um ponto no espaço $\mathcal V_3$
de tal maneira que no instante $t$ a
posição do corpo é um ponto
$x(t)\in\mathcal V_3$.
O obsevador somente é capaz de descrever a posição
do corpo comparando-a com sua própria posição
ou com a posição de um _referencial_ no laboratório,
o experimento que verifica a posição do corpo
retorna três números reais de maneira que define
cartas $(x^1, x^2, x^3):\mathcal V_3\rightarrow \mathbb R^3$.
Em suma:
* **Posição:**
 Em cada instante $t$ a posição de um corpo no espaço é $x(t)\in\mathcal V_3$.
 O mapa $x: t\mapsto x(t)$ é chamado de trajetória do corpo.
* **Sistema de coordenadas em $\mathcal V_3$:**
 Um observador (referencial) está sempre em um lugar do espaço.
 Em alguma vizinhança $V\subset\mathcal V_3$ desse observador ele consergue definir
 cartas que denotarei nesse caderno por
 ${(x^1, x^2, x^3):V\rightarrow\mathbb R^3}$,
 o observador chama as funções $x^i$ de coordenadas.

### Velocidade

A velocidade de um corpo é o vetor tangente à sua trajetória
que mede a taxa de variação da sua posição no tempo.
Em termos algébricos,
a velocidade $\dot x(t)\in T_{x(t)}(\mathcal V_3)$
de um corpo no instante $t$ é definida pelo mapa
$$
{\dot x:t\mapsto \frac{d}{dt} x(t)}.
$$

Tal como a posição, a velocidade depende do observador e de como
o referencial por ele utilizado se move no espaço.
Uma velocidade nula
não significa que o corpo está em repouso absoluto, significa apenas
que está em repouso com respeito ao referencial utilizado pelo observador.
De maneira semelhante, um corpo em repouso pode ter uma velocidade não-nula
se o referencial utilizado pelo observador se move.
Tal é a importância desse simples fato que Einstein chegou a postular
que "Não existe referencial absoluto", no sentido de que não há meios experimentais
capazes de determinar se um corpo está em repouso ou movendo-se com respeito
a um ponto fixo do espaço, mas apenas com respeito a outro corpo.

### Cartas do fibrado tangente

Utilizando as coordenadas o observador consegue definir uma carta no
fibrado tangente e assim descrever os vetores na sua vizinhança
utilizando seis números reais, três para informar a posição onde o vetor é tangente
e três para informar a projeção do vetor em uma dada direção.
De fato basta definir
$$
\begin{cases}
{v^i:\pi^{-1}(V)\rightarrow\mathbb R:X\mapsto \hat x^i|_{\pi(X)}(X)} \\
{\xi^i:\pi^{-1}(V)\rightarrow\mathbb R:X\mapsto x^i\circ\pi(X)},
\end{cases}
$$
onde $\pi:T(\mathcal V_3)\rightarrow\mathcal V_3$
é a projeção do fibrado tangente no espaço.
Ele chama a função $v^i$ de
i-ésima componente do vetor tangente
associada à coordenada $x^i$
e às funções
$\xi^i$ também chama de coordenadas.

Utilizando essa carta, a velocidade de um corpo
movendo-se na vizinhança do observador é
$$
\dot x(t) =
\sum_{i=1}^3 \dot x^i(t)
~ \hat x_i|_{x(t)},
$$
onde $\dot x^i(t) = \frac{d}{dt} x^i\circ x(t)$.

É importante observar que se o observador não estiver em repouso então seu referencial
pode ser dependente do tempo, de maneira que toda a discussão
deve ser feita no espaço-tempo $\mathcal V_4 = \mathbb T\times\mathcal V_3$,
adicionando à carta acima mais uma coordenada referente à dimensão extra.

## Geometria das trajetórias

### Exemplos

### Geodésicas

Um tipo bastante relevante de trajetória é a que descreve
uma geodésica no espaço. A geodésica é a trajetória em que o corpo
pecorre o menor caminho entre dois pontos a uma velocidade escalar constante.
Desde que a distância entre as posições $x(t_0)$ e $x(t_f)$ é
definida como
$$
d(x(t_0), x(t_f)) =
\int_{t_0}^{t_f}
\sqrt{\eta_{x(t)}(\dot x(t), \dot x(t))} ~ dt,\tag{2.1}
$$
a trajetória será uma geodésica se
$d(x(t_0), x(t_f)) = \mathrm v|t_f - t_0|$ para alguma constante
$\mathrm v$ com dimensão de velocidade.

Para essa distância a desigualdade de Cauchy–Schwarz é
$$
\left(\int_{t_0}^{t_f}
\sqrt{\eta_{x(t)}(\dot x(t), \dot x(t))} ~ dt\right)^2
\le |t_f - t_0|
\int_{t_0}^{t_f}
\eta_{x(t)}(\dot x(t), \dot x(t)) ~ dt
$$
onde a igualdade claramente vale quando a curva possui velocidade constante e a
distância é mínima. As equações de Euler-Lagrange para essa curva são

$$
\eta_{ij} \frac{\partial}{\partial v^i} v^j - \frac{d}{dt} v^i v^j \frac{\partial}{\partial \xi^k} \eta_{ij} = 0
$$

$$
\ddot \xi^i +
\Gamma^i_{jk} \dot \xi^j \dot \xi^k = 0
$$

### Equação do movimento geodésico

De volta à motivação para introdução do formalismo lagrangiano,
definindo o legrangiano associado à métrica por

$$
L_{\eta}(X) = \frac{1}{2}\eta_{\pi(X)}(X, X),
$$

...

$$
D_G\lrcorner d\theta - dL_{\eta} = 0
$$

### Equações de movimento não geodésico

Uma equação de movimento de segunda ordem,
nos moldes do que foi visto nessa sessão,
pode ser definida como uma equação da forma

$$
\frac{d}{dt} \dot x(t) = X\circ\dot x(t),
$$

onde $X:T\mathcal V:\rightarrow TT\mathcal V$
é algum campo vetorial no espaço tangente
tal que $D\pi(X(v)) = v$, essa condição é necessária
para que a regra da cadeia, $\dot x(t) = D\pi\circ\ddot x(t)$, seja válida.

### Aceleração

A aceleração de uma curva governada por uma equação de movimento de segunda ordem,
é definida como a diferença entre a equação de segunda ordem e
a equação da geodésica, isto é,
$$
A = D - D_G.
$$

### Curvatura

Assim como a aceleração, a curvatura é uma medida do quanto
que a trajetória de um corpo se afasta do movimento geodésico,
entretanto a curvatura é uma grandeza escalar.
A curvatura $\kappa(t)$ no instante $t$ é definida por
$$
\kappa(t) = \frac{||a(t)||_{x(t)}}{||\dot x(t)||_{x(t)}}.
$$

## Formalismo Lagrangiano

Motivados pela busca das equações da geodésica somos levados a estudar
as integrais que queremos minimizar em um aspecto mais geral,
o que dá origem ao formalismo lagrangiano para o estudo do cálculo de variações.

Nesta sessão considere que $\mathcal V$ é uma variedade suave.

### Definição: Lagrangiano

Um lagrangiano autônomo é uma função suave $L:T\mathcal V\rightarrow\mathbb R$.

Exemplos:
* Dado um tensor (pseudo) métrico $\eta$ definido em $\mathcal V$ e uma função
  $V:\mathcal V\rightarrow\mathbb R$, define-se o lagrangiano
  $L(X) = \frac{1}{2}\eta_{\pi(X)}(X, X) - V\circ\pi(X)$.
* Dada uma 1-forma diferencial $\sigma\in\mathfrak X(\mathcal V; \Lambda^1\mathcal V)$,
  define-se o lagrangiano $L_{\sigma}(X) = \sigma|_{\pi(X)}(X)$.

### Definição: Ação

A ação $\mathscr A_L(\gamma)$ associada a esse lagrangiano
sobre a curva $\gamma:[\tau_0, \tau_f]\rightarrow\mathcal V$
é definida por

$$
\mathscr A_L(\gamma) = \int_{\tau_0}^{\tau_f}
L\circ\dot\gamma(\tau) ~ d\tau,
$$

onde $\dot\gamma(\tau) = \frac{d}{d\tau}\gamma(\tau)$.

Exemplos:
* O comprimento de arco $\int_{\tau_0}^{\tau_f} \sqrt{|\eta_{\gamma(t)}(\dot\gamma(t), \dot\gamma(t))|} ~ d\tau$.
* A energia da curva $\frac{1}{2}\int_{\tau_0}^{\tau_f} \eta_{\gamma(t)}(\dot\gamma(t), \dot\gamma(t)) ~ d\tau$.

### Definição: Perturbação na ação

Uma perturbação na ação é uma função
${\tilde\gamma:]-\epsilon, \epsilon[\times[\tau_0, \tau_f]\rightarrow\mathcal V:(s,\tau)\mapsto\tilde\gamma_s(\tau)}$
que possui as seguintes propriedades:
* $\forall_{\tau\in [\tau_0, \tau_f]} (\tilde\gamma_0(\tau) = \gamma(\tau))$
* $\forall_{s\in]-\epsilon, \epsilon[} (\tilde\gamma_s(\tau_0) = \gamma_s(\tau_0))$
* $\forall_{s\in]-\epsilon, \epsilon[} (\tilde\gamma_s(\tau_f) = \gamma(\tau_f))$.

Uma trajetória é crítica para a ação se
$\frac{d}{ds}\mathscr A_L(\tilde\gamma_s) = 0$.

### Proposição: Equações de Euler-Lagrange

Uma trajetória é crítica para a ação se
satisfaz às equações de Euler-Lagrange dadas por

$$
\left.\frac{\partial}{\partial\xi^i}\right\vert_{\dot\gamma(\tau)} L -
\frac{d}{d\tau}\left.\frac{\partial}{\partial v^i}\right\vert_{\dot\gamma(\tau)} L = 0.
$$

### Definição: Derivada de fibra

A derivada de fibra do lagrangiano é o mapa
$\mathbb FL:T\mathcal V\rightarrow T^*\mathcal V$ definido por

$$
\mathbb FL(X)(Y) = \lim_{h\to 0}\frac{1}{h} [L(X + hY) - L(X)].
$$

O lagrangiano é dito regular se esse mapa é um difeomorfismo local
e hiper-regular se é um difeomorfismo.

## Dinâmica do contínuo

### Região ocupada por um corpo extenso

A seguinte construção é conhecida como hipótese do contínuo e
é bastante útil para a descrição macroscópica de certas entidades físicas.
Para começar, quer-se descrever um _corpo extenso_ que ocupa uma região
$\Omega_t\subset\mathcal V_3$ do espaço no instante $t$, cada ponto $x\in\Omega_t$
é considerado, em seu próprio direito, como um corpo, de maneira que o corpo extenso
é na verdade composto de infinitos corpos pontuais continuamente distribuídos na
região $\Omega_t$. Esse corpo extenso pode ser um fluido como a água, um gás,
uma estrela, etc.

Os eventos do corpo extenso são os pontos da região do espaço-tempo definida por
$$
\Omega = \{(t, x)\in\mathcal V_4 ~|~ x\in\Omega_t \}.
$$

### Campo de velocidades

O campo de velocidade do corpo extenso é um campo vetorial
dependente do tempo
$\vec u:\Omega\rightarrow T\mathcal V_3$ que descreve a velocidade dos pontos
do corpo extenso, isto é,
se $\gamma:\mathbb T\rightarrow \mathcal V_3$ é a trajetória
de um ponto qualquer do corpo extenso, com $\gamma(t)\in\Omega_{t}$,
então
$$
\frac{d}{dt} \gamma(t) = \vec u(t, \gamma(t)).
$$

Quando o campo de velocidades é suave essa abordagem define o escoo
do corpo extenso como como sendo a função
$\Phi:\Omega\rightarrow\mathcal V_3$ que informa a evolução de
cada ponto do corpo extenso, isto é,
$$
\frac{d}{dt} \Phi_x(t) = \vec u(t, \Phi_x(t)),
$$
onde $\Phi_x(t) = \Phi(t, x)$.

De maneira semelhante também é possível definir uma quadrivelocidade
$U:\Omega\rightarrow T\mathcal V_4$,
o escoo $\varphi:\mathbb T\times\mathcal V_4\rightarrow\mathcal V_4$ desse campo
será simplesmente $\varphi(t, (t, x)) = (t, \Phi(t, x))$.
Esse campo de quadrivelocidades é útil para escrever as equações
no espaço-tempo na sua forma livre de coordenadas.

### Equação de continuidade

Uma quantidade escalar distribuida pelo corpo extenso
é definida da seguinte maneira, dada uma
função de densidade $\rho:\Omega\rightarrow\mathbb R$,
a quantidade $\mu(\Omega_t)$ no instante $t$ é dada por
$$
\mu(\Omega_t) = \int_{\Omega_t} \star\rho_t,
$$
onde $\star$ é o operador de Hodge definido pela métrica do espaço
e em cada instante $t$ a função $\rho_t(x) = \rho(t, x)$ é uma função do espaço.
A 3-forma diferencial $\star\rho_t$ é
uma forma de volume no espaço associada a densidade da quantidade $\mu(\Omega_t)$,
tendo em conta a densidade do próprio espaço.

Utilizando a regra integral de Leibniz obtem-se a seguinte expressão
para a taxa de variação dessa quantidade por unidade de tempo,
$$
\frac{d}{dt}\int_{\Omega_t} \star\rho_t =
\int_{\Omega_{t}} \mathcal L_{\vec u_t}(\star\rho_t) +
\int_{\Omega_{t}}\star\dot\rho_t,
$$
onde $\dot\rho_t(x) = \frac{\partial}{\partial t} \rho(t, x)$ e $\vec u_t(x) = \vec u(t, x)$.
De acordo com a fórmula mágica de Cartan
$\mathcal L_{\vec u_t}(\star\rho_t) = \vec u_t \lrcorner d(\star\rho_t) + d(\vec u_t \lrcorner \star\rho_t)$,
onde o primeiro termo é nulo, $d(\star\rho_t) = 0$,
devido ao fato de que $\star\rho_t$ é uma forma de volume,
já o segundo termo é melhor escrito usando a identidade
$\vec u_t \lrcorner \star\rho_t = \star(\rho_t\eta^\flat(\vec u_t)) = \star\eta^\flat(\rho_t\vec u_t)$.
Assim
$$
\frac{d}{dt} \mu(\Omega_{t}) =
\int_{\Omega_{t}} d\star\eta^\flat(\rho_t\vec u_t) +
\int_{\Omega_{t}} \star\dot\rho_t,
$$
de maneira que utilizando o teorema de Stokes
obtem-se a forma integral da equação de continuidade,
$$
\frac{d}{dt} \mu(\Omega_{t}) =
\int_{\partial\Omega_{t}} \star\eta^\flat(\rho_t\vec u_t) +
\int_{\Omega_{t}} \star\dot\rho_t,
$$
isto é, a quantidade $\mu(\Omega_{t})$ apenas varia no tempo quando
escoa a uma taxa $\rho_t\vec u_t$ pelo bordo do corpo ou quando é criada
ou destruída dentro do corpo a uma taxa $\dot\rho_t$.
Seja $g:\Omega\rightarrow\mathbb R$ tal que
$\frac{d}{dt} \mu(\Omega_{t}) = \int_{\Omega_{t}} \star g_t$,
com $g_t(x) = g(t, x)$, essa função $g$ informa a digergência da
densidade no espaço-tempo, de fato igualando os integrandos em
$$
\int_{\Omega_{t}} d\star(\rho_t\eta^\flat(\vec u_t)) +
\int_{\Omega_{t}}\star\frac{\partial}{\partial t}\rho_t =
\int_{\Omega_{t}} \star g_t
$$
obtem-se forma diferencial da equação de continuidade,
$$
\frac{\partial}{\partial t}\rho + \nabla\cdot(\rho\vec u) = g,
$$
onde $\nabla\cdot(\rho\vec u)(t, x) = \star d\star\eta^\flat(\rho_t\vec u_t)|_x$
é o divergente espacial do campo vetorial $\vec j = \rho\vec u$,
esse campo é chamado de fluxo da quantidade.

Sendo $\tilde\eta$ o tensor métrico
do espaço-tempo, um cálculo utilizando coordendas (fica como exercício)
mostra que a equação de continuidade acima também pode ser escrita como
$$
\operatorname{div}(\rho U) = g,
$$
onde $\operatorname{div}(\rho U) = \star d\star\tilde\eta^\flat(\rho U)$
é o divergente espaço-temporal da quadricorrente $J = \rho U$
(agora com $\star$ definido usando a métrica do espaço-tempo).

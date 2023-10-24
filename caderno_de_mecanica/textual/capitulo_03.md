# Mecânica

Neste capítulo tomarei nota sobre as leis da mecânica de
Newton...

Perguntas por resolver?
* Pq definir o momento como uma 1-forma?
* É melhor definir energia?

$$
\theta(X) = p_i X^i
$$

## Introdução

Para o estudo da mecânica dos corpos
é necessário entender, sem definição,
os conceitos de momento,
ou quantidade de movimento, e força.
* **Momento:**
  O momento linear é uma grandeza que
  paralela à velocidade que mede a
  quantidade de movimento de um corpo.

  Em cada instante $t$ o momento linear
  de um corpo é $p(t)\in T^*\mathcal V_3$.
* **Força:**
  Uma força imprimida é uma ação exercida
  sobre um corpo com o fim
  de alterar seu estado
  de repouso ou de movimento geodésico.
  
  A força de inércia
  é aquela pela qual um corpo
  mantém seu estado
  de repouso ou de movimento geodésico.

  A força motora é
  a resultante das ações das forças
  imprimidas e de inércia.

Algumas construções básicas são feitas
utilizando o conceito primitivo:
* **Massa:**
  Em cada instante $t$ a massa de um corpo
  é a razão entre seu momento e sua velocidade,
  tal qual definida pelo mapa
  $$m:t\mapsto\sqrt{\left\vert
      \frac{\eta^*_{x(t)}(p(t), p(t))}
      {\eta_{x(t)}(v(t), v(t))}
  \right\vert}.$$
  Daí vem a relação momento-velocidade,
  $$p(t) = m(t) ~ \eta^\flat\circ v(t).$$
  Note-se que essa relação não necessariamente
  estabelece uma dualidade entre os fibrados
  tangente e cotangente.
* **Sistema de coordenadas em $T^*(\mathcal V_3)$:**
  O observador (referencial)
  também consegue definir cartas em
  ${T^*(V) \subset T(\mathcal V_3)}$,
  de fato ele pode tomar
  $$\begin{cases}
  {p_i:T^*(V)\rightarrow\mathbb R:
  \sigma\mapsto \sigma
  \left(\frac{\partial}{\partial x^i}\right)} \\
  {q^i:T^*(V)\rightarrow\mathbb R:
  \sigma\mapsto x^i\circ\pi(\sigma)},
  \end{cases}$$
  onde
  $\pi:T^*(\mathcal V_3)\rightarrow\mathcal V_3$
  é a projeção do fibrado cotangente.
  Ele chama a função $p_i$ de
  componente do momento
  associado à coordenada $x^i$
  e às funções
  $q^i$ também chama de coordenadas.

  O momento de um corpo
  movendo-se na vizinhança do observador é
  $$p(t) =
  \sum_{i=1}^3 p_i\circ p(t)
  ~ dx^i|_{x(t)}.\tag{1}$$

## As leis de Newton

**Postulado: Princípio de inércia**
> *Todo corpo matém, no que depende dele, seu estado de repouso ou
> movimento geodésico.*

**Postulado: Princípio fundamental da dinâmica**
> *A mudança no momento é proporcional à força motora imprimida.*

Assim, em cada instante $t$ a força motora $F(t)\in TT^*\mathcal V_3$
se relaciona com a órbita do corpo, em unidades de Newton,
pela equação
$$
\frac{d}{dt}\gamma^\flat(t) = F(t).
$$

## Expressão local das leis de Newton

Seja...
$\eta^{ij} = \eta^*(dx^i, dx^j)$...

A componente $a_i(t)$ da aceleração no instante $t$
é definida por

$$a_i(t) = \frac{d}{dt}
\sum_{j=1}^3\eta_{ij}\circ x(t) v^j\circ\dot x(t) -
\left.\frac{\partial}{\partial \xi^i}\right|_{\dot x(t)}
\sum_{j=1}^3\sum_{k=1}^3\frac{1}{2} v^j v^k \eta_{jk}$$

> Para um corpo movendo-se na
> vizinhança de um observador
> que utiliza um
> sistema de coordenadas arbitrário
> tem-se que as fórmulas abaixo são satisfeitas.

$$\begin{aligned}
\dot q^i &= \frac{1}{m}\sum_{j=1}^3 \eta^{ij} p_j \\
\dot p_i &= \frac{\dot m}{m} p_i + m a_i - \frac{\partial}{\partial q^i}\sum_{j=1}^3\sum_{k=1}^3\frac{1}{2m} p_j p_k \eta^{jk}
\end{aligned}$$

A equação para a velocidade, $\dot q^i$, é
simplesmente a expressão local para a relação
entre o momento e a velocidade.
Já a expressão para a força, $\dot p_i$,
possi três contribuições bastante interessantes,
uma força é imprimida sobre o corpo se a massa deste mudar
ou se ele acelerar, além disso uma força de inércia é perceptível
se a expressão para o tesor métrico depender das coordenadas.

Cálculo:
$$
\begin{aligned}
\frac{d}{dt} q^i\circ p(t)
&= \frac{d}{dt} x^i\circ\pi\circ p(t) \\
&= \frac{d}{dt} x^i\circ x(t) \\
&= v^i\circ v(t) \\
&= v^i\left(\frac{1}{m(t)} \eta^{\sharp} \circ p(t) \right)\\
&= \frac{1}{m(t)} p_j\circ p(t) v^i\circ\eta^{\sharp}(dx^j|_{x(t)}) \\
&= \frac{1}{m(t)} \eta^{ij}\circ x(t) ~ p_j\circ p(t)
\end{aligned}
$$


$$
\begin{aligned}
\frac{d}{dt} p_i\circ p(t)
&= \ldots
\end{aligned}
$$
Q.E.D.

## Equações do movimento geodésico

>   Para um corpo movendo-se na
>   vizinhança de um observador
>   que utiliza um
>   sistema de coordenadas arbitrário
>   tem-se que

## A força de inércia

Sob a hipótese de que um corpo está livre da ação de forças imprimidas,
de acordo com o princípio fundamental da dinâmica
sua órbita é tal que
$$
\frac{d}{dt}\gamma^\flat(t) = F_0(t),
$$
onde $F_0(t)$ é a força de inércia no instante $t$,
já de acordo com o princípio de inércia essa trajetória deve ser tal
que minimiza o funcional
$$
L[\gamma] = \int_{t_0}^{t_f} L\circ\gamma^\flat(t) dt,
$$
onde $L:$

(Ver Finsler manifold)

## Relação entre forças e campos vetoriais


# Mecânica

Neste capítulo tomarei nota sobre as leis da mecânica de
Newton...

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

  Note-se que o momento de um corpo
  movendo-se na vizinhança do observador é
  $$p(t) =
  \sum_{i=1}^3 p_i\circ p(t)
  ~ dx^i|_{x(t)}.$$

## Postulado: Princípio de inércia

>   *Todo corpo matém, no que depende dele, seu estado de repouso ou
>   movimento geodésico.*

Assim, desde que a tragetória $x$ é uma geodésica
se $\nabla_{v(t)} v(t) = 0$,
então deve-se ter que
$$
\eta^\flat(\nabla_{v(t)} v(t)) = 0
$$

## Postulado: Princípio fundamental da dinâmica

>   *A mudança no momento é proporcional à força motora imprimida.*

Assim, em cada instante $t$ a força motora $F(t)\in TT^*\mathcal V_3$
se relaciona com a órbita do corpo, em unidades de Newton,
pela equação diferencial
$$
\frac{d}{dt}\gamma^\flat(t) = F(t).
$$

## Equanções da velocidade

Seja...
$\eta^{ij} = \eta^*(dx^i, dx^j)$...

>   Para um corpo movendo-se na
>   vizinhança de um observador
>   que utiliza um
>   sistema de coordenadas arbitrário
>   tem-se que
>   $$
\dot q^i = \frac{1}{m}\sum_{j=1}^3 \eta^{ij} p_j
$$

Cálculo:
$$
\begin{aligned}
\frac{d}{dt} q^i\circ p(t) &=
\frac{d}{dt} x^i\circ\pi\circ p(t) \\
&= \frac{d}{dt} x^i\circ x(t) \\
&= v^i\circ v(t) \\
&= v^i\left(\frac{1}{m(t)} \eta^{\sharp} \circ p(t) \right)\\
&= \frac{1}{m(t)} p_j\circ p(t) v^i\circ\eta^{\sharp}(dx^j|_{x(t)}) \\
&= \frac{1}{m(t)} p_j\circ p(t) \eta_{x(t)}(\eta^{\sharp}(dx^i|_{x(t)}, \eta^{\sharp}(dx^j|_{x(t)})) \\
&= \frac{1}{m(t)} \eta^{ij}\circ x(t) ~ p_j\circ p(t)
\end{aligned}
$$
Q.E.D.

## Equações do movimento geodésico

>   Para um corpo movendo-se na
>   vizinhança de um observador
>   que utiliza um
>   sistema de coordenadas arbitrário
>   tem-se que
>   $$
\dot p^i = -\frac{1}{2m}\sum_{j=1}^3\sum_{k=1}^3 p_j p_k \frac{\partial}{\partial q^i} \eta^{jk}
$$

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


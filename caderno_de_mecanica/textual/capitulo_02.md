# Mecânica

Na dinâmica, dado o espaço $\mathcal V_3$,
a posição é um sistema de coordenadas em $\mathcal V_3$
e a trajetória de um corpo é uma curva
$\gamma:I\subset \mathbb R\rightarrow\mathcal V_3$.

Para o estudo da mecânica a atenção é voltada também para
o momento que, junto com a posição, forma um sistema de coordenadas
no espaço cotangente $T^*\mathcal V_3$.
A **órbita** de um corpo é uma curva
$\gamma^\flat:I\subset \mathbb R\rightarrow T^*\mathcal V_3$
tal que $\gamma(t) = \pi\circ\gamma^\flat(t)$, onde
$\pi$ é a projeção $\pi:T^*\mathcal V_3\rightarrow\mathcal V_3$.

Ao estudar a órbita de um corpo, bem como suas causas,
deve-se determinar sua trajetória.

## Introdução

Para o estudo da mecânica dos corpos
é necessário entender, sem definição,
os conceitos de momento,
ou quantidade de movimento, e força.
*   **Momento:**
    Em cada instante $t$ o momento linear
    de um corpo é $p(t)\in T^*(\mathcal V)$.
    O caminho de fase do corpo é o mapa
    $p:t\mapsto p(t)$.
    É de notar-se que $p$ é
    um caminho em $T^*(\mathcal V_3)$.
*   **Força:**
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
*   **Massa:**
    Em cada instante $t$ a massa de um corpo
    é a razão entre seu momento e sua velocidade,
    tal qual definida pelo mapa
    $$
    m:t\mapsto\sqrt{\left\vert
        \frac{\eta^*_{x(t)}(p(t), p(t))}
        {\eta_{x(t)}(v(t), v(t))}
    \right\vert}.
    $$
    Daí vem a relação momento-velocidade,
    $$
    p(t) = m(t) ~ \eta^\flat\circ v(t).
    $$
    Note-se que essa relação não necessariamente
    estabelece uma dualidade entre os fibrados
    tangente e cotangente.
*   **Sistema de coordenadas em $T^*(\mathcal V_3)$:**
    O observador (referencial)
    também consegue definir cartas em
    ${T^*(V) \subset T(\mathcal V_3)}$,
    de fato ele pode tomar
    $$
    \begin{cases}
    {p_i:T^*(V)\rightarrow\mathbb R:
    \sigma\mapsto \sigma
    \left(\frac{\partial}{\partial x^i}\right)} \\
    {q^i:T^*(V)\rightarrow\mathbb R:
    \sigma\mapsto x^i\circ\pi(\sigma)},
    \end{cases}
    $$
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
    $$
    p(t) =
    \sum_{i=1}^3 p_i\circ p(t)
    ~ dx^i|_{x(t)}.
    $$

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

>   Para um corpo movendo-se na
>   vizinhança de um observador
>   que utiliza um
>   sistema de coordenadas arbitrário
>   tem-se que
>   $$
\dot q^i = \frac{1}{m} \eta^{ij} p_j
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


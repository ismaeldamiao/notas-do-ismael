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

## Definição: Massa

Diz-se que um corpo possui massa se existe
um isomorfismo
${M:T\mathcal V_3\rightarrow T^*\mathcal V_3}$
tal que
$$
\gamma^\flat(t) = M\circ \dot\gamma(t).
$$

Dessa maneira velocidade e momento se tornam conceitos relacionados.

## Definição: Força

Uma força imprimida é uma ação exercida sobre um corpo com o fim
de alterar seu estado de repouso ou de movimento geodésico.

A força de inércia é aquela pela qual um corpo
mantém seu estado de repouso ou de movimento geodésico.

A força motora é a resultante das ações das forças imprimidas e de inércia.

## Postulado: Princípio de inércia

>   *Todo corpo matém, no que depende dele, seu estado de repouso ou
>   movimento geodésico.*

## Postulado: Princípio fundamental da dinâmica

>   *A mudança no momento é proporcional à força motora imprimida.*

Assim, em cada instante $t$ a força motora $F(t)\in TT^*\mathcal V_3$
se relaciona com a órbita do corpo, em unidades de Newton,
pela equação diferencial
$$
\frac{d}{dt}\gamma^\flat(t) = F(t).
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


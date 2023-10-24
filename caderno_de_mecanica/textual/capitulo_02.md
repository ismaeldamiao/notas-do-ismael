# Cinemática

A cinemática é a área da física que estuda
o movimento dos corpos sem se preocupar
com as suas causas.

## Introdução

Para o estudo da dinâmica dos corpos
é necessário entender, sem definição,
os conceitos de espaço, tempo e posição
(e também de coordenadas,
na vizinhança do observador).
*   **Espaço:**
    O espaço é a variedade $\mathcal V_3$,
    de todas as possíveis posições.
*   **Posição:**
    Em cada instante $t$
    a posição de um corpo no espaço é
    $x(t)\in\mathcal V_3$.
    O mapa
    $x:
    t\mapsto x(t)$
    é chamada de trajetória do corpo.
    É de notar-se que $x$ é
    um caminho em $\mathcal V_3$.
*   **Sistema de coordenadas em $\mathcal V_3$:**
    Um observador (referencial) está sempre em
    um lugar do espaço.
    Em alguma vizinhança $V\subset\mathcal V_3$
    desse observador ele consergue definir
    cartas
    que denotarei nesse caderno por
    ${(x^1, x^2, x^3):V\rightarrow\mathbb R^3}$,
    o observador chama as funções $x^i$ de
    coordenadas.

Algumas construções básicas
são feitas utilizando os conceitos primitivos:
*   **Velocidade:**
    A velocidade $v(t)\in T_{x(t)}(\mathcal V_3)$
    de um corpo no instante $t$ é
    definida pelo mapa
    ${v:t\mapsto v(t) = \frac{d}{dt} x(t)}$.
    É de notar-se que $v$ é
    um caminho em $T(\mathcal V_3)$.
*   **Sistema de coordenadas em $T(\mathcal V_3)$:**
    O mesmo observador consegue definir cartas em
    $T(V) \subset T(\mathcal V_3)$,
    de fato ele pode tomar
    $$
    \begin{cases}
    {v^i:T(V)\rightarrow\mathbb R:X\mapsto dx^i(X)} \\
    {\xi^i:T(V)\rightarrow\mathbb R:X\mapsto x^i\circ\pi(X)},
    \end{cases}
    $$
    onde $\pi:T(\mathcal V_3)\rightarrow\mathcal V_3$
    é a projeção do fibrado tangente.
    Ele chama a função $v^i$ de
    componente da velocidade
    associada à coordenada $x^i$
    e às funções
    $\xi^i$ também chama de coordenadas.

    Note-se que a velocidade de um corpo
    movendo-se na vizinhança do observador é
    $$
    v(t) =
    \sum_{i=1}^3 v^i\circ v(t)
    ~ \hat x_i|_{x(t)}.
    $$

## Os postulados de Euclides-Riemann

## Geodésicas

Uma geodésica é uma curva no espaço com
velocidade constante e que
minimiza a distância entre $x(t_0)$ e $x(t_f)$,
isto é,
que minimiza a integral
$$
L(x) = \int_{t_0}^{t_f}
\sqrt{|\eta_{x(t)}(\dot x(t), \dot x(t))|} ~ dt,
$$
de acordo com [ref] essa integral é mínima se
também é mínima a integral
$$
A(x) = \frac{1}{2} \int_{t_0}^{t_f}
\eta_{x(t)}(\dot x(t), \dot x(t)) ~ dt,
$$

$$
\ddot \xi^i +
\Gamma^i_{jk} \dot \xi^j \dot \xi^k = 0
$$

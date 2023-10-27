# Mecânica

Neste capítulo tomarei nota sobre as leis da mecânica de
Newton...


## Introdução

### Momento

Sir Isaac Newton observou que em sistemas isolados
a grandeza $m \dot x$ é conservada, onde $m$ é a massa do corpo,
essa grandeza ficou conhecida como momento linear.
Mais tarde verificou-se que também partículas sem massa possuem
momento linear, assim é conveniente utilizar a abordagem de Sir William Hamilton,
de que o momento pode ser estudado como um conceito primitivo, tal como a posição.

Já os os estudos de Émilie du Châtelet acerca dos trabalhos de Newton mostraram,
que outra grandeza conservada é a energia cinética $\frac{1}{2} m ||\dot x(t)||^2$.
A relação momento-energia que daí surge sugere que o momento de um corpo com massa
associa sua velocidade à sua energia cinética, ou seja, que é de grande utilidade
modelar o momento $p$ de um corpo com massa como uma forma diferencial.
Além disso, não por acaso, na teoria de Hamilton o momento surge naturalmente
como um vetor covariante.

Assim, o momento é uma propriedade do corpo
que é descrita por um observador como ponto no fribrado cotangente $T^*\mathcal V_3$
de tal maneira que no instante $t$ o momento do corpo é um covetor
$p(t)\in T^*_{x(t)}\mathcal V_3$.

### Força

No trabalho de Newton é possível distinguir pelo menos
três tipos de forças.
A primeira é a _força imprimida_ que é uma ação externa
execida sobre um corpo com o fim de alterar seu estado
de repouso ou de movimento geodésico.
A segunda é a _força de inércia_ que é aquela força
pela qual um corpo mantém seu estado de repouso ou de movimento geodésico.
Já a terceira é a _força motora_ que de alguma forma captura a informação
das duas outras, isto é,
é a resultante das ações das forças imprimidas e de inércia.

A força imprimida é uma grandeza vetorial e sua representação natural
é um ponto no fibrado tangente $T\mathcal V_3$,
a representação das outras duas
depende a maneira algébrica como as leis de Newton são expressas,
neste caderno de notas elas são representadas por pontos
no tangente do cotangente $TT^*\mathcal V_3$, seguindo o trabalho de Hamilton.

### Cartas do fibrado cotangente

Utilizando as coordenadas o observador consegue definir uma carta no
fibrado cotangente e assim descrever os covetores na sua vizinhança
utilizando seis números reais, três para informar a posição onde o vetor é cotangente
e três para informar a projeção do vetor em uma dada direção.
De fato basta definir
$$\begin{cases}
{p_i:\bar\pi^{-1}(V)\rightarrow\mathbb R:
\sigma\mapsto \sigma
\left(\hat x_i\right)} \\
{q^i:\bar\pi^{-1}(V)\rightarrow\mathbb R:
\sigma\mapsto x^i\circ\bar\pi(\sigma)},
\end{cases}$$
onde
onde $\bar\pi:T(\mathcal V_3)\rightarrow\mathcal V_3$
é a projeção do fibrado cotangente.
Ele chama a função $p_i$ de
i-ésima componente do vetor cotangente
associada à coordenada $x^i$
e às funções
$q^i$ também chama de coordenadas.

Utilizando essa carta, o momento de um corpo
movendo-se na vizinhança do observador é
$$
p(t) =
\sum_{i=1}^3 p_i\circ p(t)
~ \hat x^i|_{x(t)}.
$$

## As leis de Newton

### Postulado: Princípio de ação e reação

### Postulado: Princípio fundamental da dinâmica

> *A mudança no momento é proporcional à força motora imprimida.*

Assim, em cada instante $t$ a força motora $F(t)\in TT^*\mathcal V_3$
se relaciona com a órbita do corpo, em unidades de Newton,
pela equação
$$
\frac{d}{dt}\gamma^\flat(t) = F(t).
$$

### Postulado: Princípio de inércia

> *Todo corpo matém, no que depende dele, seu estado de repouso ou
> movimento geodésico.*

### Proposição: Lei de conservação de energia



### Proposição: Lei de conservação do momento

Utilizando as leis de newton, deve-se mostrar que
"um corpo movendo-se livremente conserva o módulo do seu momento".

Prova:
Defina a massa do corpo no intante $t$ como
$$
m(t) = \frac{||p(t)||_{x(t)}}{||\dot x(t)||_{x(t)}}
$$
TODO: Complete this proof.

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


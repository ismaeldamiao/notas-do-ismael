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
{v^i:\pi^{-1}(V)\rightarrow\mathbb R:X\mapsto dx^i(X)} \\
{\xi^i:\pi^{-1}(V)\rightarrow\mathbb R:X\mapsto x^i\circ\pi(X)},
\end{cases}
$$
onde $\pi:T(\mathcal V_3)\rightarrow\mathcal V_3$
é a projeção do fibrado tangente.
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

### Aceleração

Desde que o espaço possui uma estrutura riemanniana
$(\mathcal V_3, \eta)$, no instante $t$ pode ser definido
um _vetor aceleração_ utilizando a conexão de Levi-Civita
acossiada à métrica do espaço.
Assim o vetor aceleração $a(t)$ no instante $t$ é definido como
$$
a(t) = \nabla_{D_t} ~ \dot x(t),
$$
onde o vetor "derivada temporal" é localmente dado por
$$
D_t =
\sum_{i=1}^3 v^i
~ \hat x_i.
$$

### Problemas de interesse

* Problema 1.  
  Dadas as componentes $\dot x^i(t)$ da velocidade de um corpo, determinar sua trajetória.
* Problema 2.  
  Dadas as componentes $a^i(t)$ aceleração de um corpo, determinar sua trajetória.

## Geometria das trajetórias

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
\int_{t_0}^{t_f}
\sqrt{\eta_{x(t)}(\dot x(t), \dot x(t))} ~ dt
\le 2|t_f - t_0|
\int_{t_0}^{t_f}
\eta_{x(t)}(\dot x(t), \dot x(t)) ~ dt
$$




$$
\ddot \xi^i +
\Gamma^i_{jk} \dot \xi^j \dot \xi^k = 0
$$

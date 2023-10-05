 <head>
<script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js' type='text/javascript'>
   MathJax.Hub.Config({
      jax: ["input/TeX","output/HTML-CSS"],
      extensions: ["tex2jax.js","TeX/AMSmath.js","TeX/AMSsymbols.js"],
      TeX: {
         equationNumbers: { autoNumber: "all" },
         Macros: {
            sen: "\\operatorname{sen}\\,",
            asen: "\\operatorname{arcsen}\\,"
         }
      },
      tex2jax: {
         inlineMath: [ ['\\(','\\)'], ['$','$'] ],
         displayMath: [ ['\\[','\\]'], ['$$','$$'] ]
      },
      "HTML-CSS": { availableFonts: ["TeX"] }
   });
</script>
</head>

% Teste
% I. F. F. dos Santos

# Introdução à estatística

- [Introdução à estatística](#introdução-à-estatística)
  - [Revisão preliminar](#revisão-preliminar)
    - [Conjuntos e afirmações](#conjuntos-e-afirmações)
    - [Medidas](#medidas)
    - [Regra da soma](#regra-da-soma)
    - [Princípio fundamental da contagem](#princípio-fundamental-da-contagem)
    - [Integrais de Lebesgue](#integrais-de-lebesgue)
  - [Teoria de probabilidade](#teoria-de-probabilidade)
    - [Definição: Espaço amostral](#definição-espaço-amostral)
    - [Definição: Espaço de eventos](#definição-espaço-de-eventos)
    - [Definição: Probabilidade](#definição-probabilidade)
    - [Teorema: Propriedades da probabilidade](#teorema-propriedades-da-probabilidade)
    - [Definição: Variável aleatória](#definição-variável-aleatória)
    - [Teorema: Distribuição de probabilidade](#teorema-distribuição-de-probabilidade)
  - [Aplicações da teoria de probabilidade](#aplicações-da-teoria-de-probabilidade)
    - [Histograma](#histograma)
    - [Laboratório básico de física](#laboratório-básico-de-física)
  - [Distribuições](#distribuições)
    - [Distribuição normal](#distribuição-normal)
    - [Distribuição de Poisson](#distribuição-de-poisson)
  - [Ferramentas computacionais](#ferramentas-computacionais)




## Revisão preliminar

Antes de estudar estatística é necessário rever alguns conceitos básicos
sobre conjuntos pois toda a teoria de probabilidade é axiomatizada
como um modelo na teoria de conjuntos.
Outros assuntos que também devem ser revisados são contagem e teoria de medidas,
pois são a base para a construção de probabilidades em termos das
medidas naturais dos sistemas em estudo.

### Conjuntos e afirmações

Há uma relação bem estreita entre afirmações e a teoria de conjuntos.
Por exemplo, quando se deseja afirmar que "esta partícula possui massa"
podemos denotar a partícula por $p$ e
denotar o conjunto das partículas com passa por $A$,
de maneira que a afirmação "esta partícula possui massa"
passa a ser denotada por $p\in A$.
Se a partícula também possuir spin e o conjunto das partículas com spin
for denotado por $B$ então a afirmação
"esta partícula possui massa e spin"
será denotada por $(p \in A)\land(p \in B)$ ou ainda $p\in (A\cap B)$,
já a afirmação "esta partícula ou possui massa ou possui spin"
será denotada por $(p \in A)\lor(p \in B)$ ou ainda $p\in (A\cup B)$.

De maneira genérica, dados conjuntos $A$ e $B$ denotando eventos,
a conjunção "$A$ e $B$" dos eventos é denotada pela intersecção $A\cap B$
e a disjunção "$A$ ou $B$" é denotada pela união $A\cup B$.
Também a negação "não $A$" é denotada pelo complementar $A^\complement$.

### Medidas

Dado um conjunto $U$, o domínio, pode ser de certa utilidade
saber calcular o "tamanho" de um subconjunto $A\subseteq U$,
esse tamanho é chamado de **medida** $\mu(A)$.
Os subconjuntos que se sabe como calcular seus tamanhos são
chamados de **conjuntos mensuráveis** e o conjunto de todos os
conjuntos mensuráveis é chamado de álgebra-$\sigma$,
note que a álgebra-$\sigma$ do domínio é sempre um subconjunto
do conjunto das partes $\wp(U)$.

O exemplo mais simples se dá quando $U$ é um conjunto finito,
digamos $U = \{1,2\}$, e a álgebra-$\sigma$ é o próprio conjunto
das partes, $\wp(U) = \{\{~\}, \{1\}, \{2\}, \{1,2\}\}$, nesse caso
a medida é a função $|A|$ que associa a cada $A\in\wp(U)$ a
quantidade de elementos que $A$ possui,
$|\{~\}| = 0$, $|\{1\}| = |\{2\}| = 0$ e $|\{1, 2\}| = 2$.
Outro exemplo é a medida de Lebesgue $\lambda$, que associa
a cada conjunto aberto $A$ do espaço euclidiano tridimensional
o volume $\lambda(A)$ desse conjunto.

### Regra da soma

Segundo a regra da soma,
se $A_1, \cdots, A_N$ é uma família finita de conjuntos finitos e
disjuntos, então
$$
   |A_1 \cup\cdots\cup A_N| = \sum_{n = 1}^N |A_n|,
$$
onde $|C|$ denota a quantidade de elementos que o conjunto $C$
possui.

De maneira mais geral, dada uma medida $\mu$,
se $A_1, \cdots, A_N$
é uma família finita de conjuntos mensuráveis e disjuntos
então pode-se demonstrar que
$$
   \mu(A_1 \cup\cdots\cup A_N) = \sum_{n = 1}^N \mu(A_n).
$$

### Princípio fundamental da contagem

Segundo o princípio fundamental da contagem,
se $A_1, \cdots, A_N$ é uma família finita de conjuntos finitos,
então
$$
   |A_1 \times\cdots\times A_N| = \prod_{n = 1}^N |A_n|,
$$
onde $|C|$ denota a quantidade de elementos que o conjunto $C$
possui.

### Integrais de Lebesgue

Uma propriedade interessante das medidas é que
elas permitem definir o conceito de integral de maneira mais geral.
A integral de Lebesgue é denotada distintamente por
$$
   \int_A f ~ d\mu = \int_A f(x) ~ d\mu(x) = \int_A f(x) ~ \mu(dx)
$$
e será bem definida sempre que $A$ for um subconjunto mensurável
do domínio, $\mu$ for uma medida desses conjuntos mensuráveis
e $f$ for uma função real (mensurável).

Alguns casos particulares merecem especial atenção.
Quando $U$ é enumerável então pode-se verificar que
$$
   \int_A f ~ d\mu = \sum_{x\in U} f(x) \mu\{x\}.
$$

Já quando $U = \mathbb R^n$ e
existe uma **densidade** $\rho$ tal que $\mu(A) = \int_A \rho(x) ~ dx$
então pode-se demonstrar que
$$
   \int_A f ~ d\mu = \int_A f(x) \rho(x)~ dx.
$$

De maneira similar,
quando $U$ é uma variedade diferenciável com uma forma de volume $\omega$ e
existe uma densidade $\rho$ tal que $\mu(A) = \int_A \rho ~ \omega$
então pode-se demonstrar que
$$
   \int_A f ~ d\mu = \int_A f \rho ~ \omega.
$$

## Teoria de probabilidade

A teoria de probabilidade utiliza um modelo axiomático para
estudar o conceito de probabilidade que é ensinado nas escolas de ensino
fundamental e médio.
É através desse modelo que podemos estudar sistema "complicados"
e assim desenvolver modelos estatísticos para descrever a natureza.

### Definição: Espaço amostral

O espaço amostral é o conjunto dos possíveis resultados de um experimento.
Uma amostra é um elemento do espaço amostral.

### Definição: Espaço de eventos

O espaço de eventos é uma família $\mathscr E$
de subconjuntos no espaço amostral $\mathcal A$,
$\mathscr E\subset \wp(\mathcal A)$,
que possui as propriedades abaixo.
Um evento é um elemento dos espaço de eventos.

1. O espaço amostral é um evento:
   $\mathcal A\in\mathscr E$
2. O evento complementar é um evento:
   $\forall{ }_{A \in\mathscr E} ((\mathcal A\setminus A)\in\mathscr E)$
3. A união contável de eventos é um evento:
   Dada uma família enumerável
   $\{A_j\in\mathscr E\}_{j\in I\subseteq\mathbb N}$,
   tem-se que $\left(\bigcup_{j\in I} A_j\right)\in\mathscr E$.

É interessante notar que
o espaço de eventos é, por definição, uma álgebra-$\sigma$.


### Definição: Probabilidade

Sejam $\mathcal A$ um espaço amostral e
$\mathcal E$ um espaço e eventos de $\mathcal A$.

Uma função de probabilidade é uma função
${\mathbb P:\mathscr E\rightarrow\R}$
que possui as seguintes propriedades:

1. A probabilidade de qualquer evento é positiva:
   $\forall{ }_{A\in\mathscr E} (\mathbb P(A) \geq 0)$
2. A probabilidade do espaço amostral é 1:
   $\mathbb P(\mathcal A) = 1$
3. Aditividade-$\sigma$ contável:
   Dada uma família enumerável
   $\{A_j\in\Sigma\}_{j\in I\subseteq\mathbb N}$
   disjunta, $j\neq k\Rightarrow A_j\cap A_k = \varnothing$,
   tem-se que
   $\mathbb P\left(\bigcup_{j\in I} A_j\right) = \sum_{j\in I}\mathbb P(A_j)$.

Uma função de probabilidade
permite classificar os eventos da seguinte maneira:
* Evento impossível:
  É aquele evento $A\in\mathcal E$
  tal que $\mathbb P(A) = 0$.
* Evento certo:
  É aquele evento $A\in\mathcal E$
  tal que $\mathbb P(A) = 1$.
* Eventos independentes:
  São aqueles $A_1\in\mathcal E$ e $A_2\in\mathcal E$
  tais que $\mathbb P(A_1 \cap A_2) = \mathbb P(A_1) \mathbb P(A_2)$.

É interessante notar que uma função de probabilidade
é uma medida com a propriedade adicional de que $\mathbb P(\mathcal A) = 1$.
Por essa razão, é fácil ver que se $\mu$ é uma medida qualquer
então a medida
$$
   A\mapsto \frac{1}{\mu(\mathcal A)}\mu(A)
$$
é uma função de probabilidade,
essa medida é chamada de distribuição uniforme com respeito a $\mu$.
O valor $\mu(\mathcal A)$ é chamado de constante de normalização.

### Teorema: Propriedades da probabilidade

Sejam $\mathcal A$ um espaço amostral,
$\mathcal E\subseteq\wp(\mathcal A)$ um espaço de eventos
e $\mathbb P:\mathcal E\rightarrow \mathbb R$ uma função de probabilidade.
$\mathbb P$ possui as seguintes propriedades.
1. $\mathbb P(\varnothing) = 0$
2. $\forall_{A\in\mathscr E} (\mathbb P(A) \in [0, 1])$
3. $\forall_{A\in\mathscr E}
   (\mathbb P(\mathcal A\setminus A) = 1 - \mathbb P(A))$
4. $\forall_{(A_1, A_2)\in\mathscr E^2}
   ( \mathbb P(A_1\cup A_2) =
   \mathbb P(A_1) + \mathbb P(A_2) - \mathbb P(A_1\cap A_2) )$
5. $\forall_{(A_1, A_2)\in\mathscr E^2}
   ( \mathbb P(A_1\setminus A_2) = \mathbb P(A_1) - \mathbb P(A_1\cap A_2) )$

### Definição: Variável aleatória

Sejam $\mathcal A$ um espaço amostral,
$\mathcal E\subseteq\wp(\mathcal A)$ um espaço de eventos
e $\mathbb P:\mathcal E\rightarrow \mathbb R$ uma função de probabilidade.
Seja também $\mathcal B$ um conjunto que possui uma
álgebra-$\sigma$ $\Sigma\subseteq\wp(\mathcal B)$.

Uma variável aleatória é uma função
$X:\mathcal A\rightarrow \mathcal B$ que possui a propriedade de que
se $B\subseteq \mathcal B$ é mensurável, $B\in\Sigma$,
então sua pré-imagem é um evento, isto é,
$\{x\in\mathcal A ~|~ X(x)\in B\}\in\mathcal E$.

A probabilidade de que $X$ resulte em um elemento $B\in\Sigma$ é definida e
denotada por
$$
   \mathbb P(X \in B) = \mathbb P\{x\in\mathcal A ~|~ X(x)\in B\}.
$$

Em particular, quando $\mathcal B = \mathbb R$ e
$\Sigma$ é a álgebra de Borel dos reais,
definem-se as seguintes quantidades.
* Esperança: $\mathbb E(X) = \int_{\mathcal A} X ~ d\mathbb P$.
* Variância: $\mathbb V(X) = \mathbb E[(X - \mathbb E(X))^2]$.
* Desvio padrão: $\Delta X = \sqrt{\mathbb V(X)}$.

Um cálculo simples mostra que $\mathbb V(X) = \mathbb E(X^2) - \mathbb E^2(X)$.

### Teorema: Distribuição de probabilidade

Sejam $\mathcal A$ um espaço amostral,
$\mathcal E\subseteq\wp(\mathcal A)$ um espaço de eventos
e $\mathbb P:\mathcal E\rightarrow \mathbb R$ uma função de probabilidade.
Sejam também $\mathcal B$ um conjunto que possui uma
álgebra-$\sigma$ $\Sigma\subseteq\wp(\mathcal B)$
e $X:\mathcal A\rightarrow\mathcal B$ uma variável aleatória.

O mapa $B\mapsto \mathbb P(X\in B)$ é uma função de probabilidade.

## Aplicações da teoria de probabilidade

Nesta sessão algumas aplicações básicas da teoria de probabilidade
serão apresentar para familiarizar o leitor com os conceitos apresentados
e fornecer um bom formulário de temas simples.

Uma observação relevante a se fazer é que
em um experimento real *sempre* se olha para variáveis aleatórias,
isto é, os resultados, ou dados, são valores
em $\mathcal B$ --- assumindo a notação do fim da sessão anterior ---
fornecidos por alguma variável aleatória $X$
e não se possui, *a priori*, qualquer informação sobre $\mathcal A$,
é a partir dos dados que se pretende inferir qual a natureza de $\mathcal A$.

### Histograma

O histograma é a maneira padrão de tentar inferir a função de probabilidade
de uma variável aleatória.
A técnica é bastante simples,
suponha que um experimento é realizado $N$ vezes, com $N\in\mathbb N$,
obtendo os resultados $a_1, \cdots, a_N$.
Toma-se $\mathcal B = \{a_1, \cdots, a_N\}$
e são definidas $M$ partições
$B_1\subseteq\mathcal B, \cdots, B_M\subseteq\mathcal B$
necessariamente disjuntas (veja a figura baixo)
tais que $\bigcup_{m=1}^M B_m = \mathcal B$,
com $(M\in\mathbb N)\land(M\le N)$.

O próximo passo é definir a frequência de um evento $B_m$,
para isso é definida a função
$$
   B_m\mapsto \omega_N(B_m) =
   \sum_{n=1}^N
   \begin{cases}
   1 & \text{se $a_n\in B_m$} \\
   0 & \text{caso contrário}
   \end{cases}
$$
onde se pode ver que $\frac{1}{N}\sum_{m=1}^M \omega_N(B_m) = 1$,
o que parece sugerir que o mapa
$B_m\mapsto N^{-1}\omega_N(B_m)$ é uma função de probabilidade.
A **lei dos números grandes**
afirma que, de fato, se o experimento for bem feito e puder
ser repetido indefinidamente então esse mapa irá convergir
para a função de probabilidade, em termos algébricos
$$
   \lim_{N\to\infty} \frac{1}{N} \omega_N(B_n) = \mathbb P(X \in B_n).
$$

### Laboratório básico de física

Sempre que se realiza um experimento em um laboratório de física
se obtém uma lista (ou mais) com vário números reais, esses números
não são os resultados do experimento
mas fornecem informações que devem ser tratadas para obter os resultados.
A ideia utilizada para tratar essas informações é simples,
considerando que foram realizadas $N$ medidas, com $N\in\mathbb N$,
de um determinado experimento, obtendo uma sequência
de reais $a_1, \cdots, a_N$,
então a média empírica de $f$ é tomada como sendo
$$
   \bar X = \frac{1}{N}\sum_{n=1}^N a_n.
$$

De maneira similar o desvio padrão empírico é tomado como sendo
$$
   \sigma_X = \sqrt{
      \frac{1}{N}\sum_{n=1}^N a_n^2 -
      \left(\frac{1}{N}\sum_{n=1}^N a_n\right)^2
   }.
$$

Mais uma vez, assumindo a lei dos números grandes, espera-se que
$\lim_{N\to\infty} \bar X = \mathbb E(X)$ e
$\lim_{N\to\infty} \sigma_X = \Delta X$.

Na situação acima descrita há duas possibilidades: 1)
Todos os resultados obtidos representam um único valor e
o desvio se dá apenar por flutuações inerentes ao processo de experimentação,
nesse caso o valor empírico de $X$ é tomado como sendo
$\tilde X = \bar X ± \sigma_X$.

## Distribuições

### Distribuição normal

### Distribuição de Poisson

## Ferramentas computacionais

# Introdução à estatística

- [Introdução à estatística](#introdução-à-estatística)
  - [Teoria de probabilidade](#teoria-de-probabilidade)
    - [Definição: Espaço amostral](#definição-espaço-amostral)
    - [Definição: Espaço de eventos](#definição-espaço-de-eventos)
    - [Definição: Probabilidade](#definição-probabilidade)
    - [Teorema: Propriedades da probabilidade](#teorema-propriedades-da-probabilidade)
    - [Medidas finitas e suas probabilidades](#medidas-finitas-e-suas-probabilidades)
  - [Teoria estatística](#teoria-estatística)
    - [Definição: Variável aleatória](#definição-variável-aleatória)
    - [Moda](#moda)
  - [Revisão preliminar](#revisão-preliminar)
    - [Medidas](#medidas)
    - [Regra da soma](#regra-da-soma)
    - [Princípio fundamental da contagem](#princípio-fundamental-da-contagem)
    - [Integrais de Lebesgue](#integrais-de-lebesgue)
  - [Teoria de probabilidade (bak)](#teoria-de-probabilidade-bak)
    - [Teorema: Distribuição de probabilidade](#teorema-distribuição-de-probabilidade)
  - [Aplicações da teoria de probabilidade](#aplicações-da-teoria-de-probabilidade)
    - [Construindo espaços de eventos](#construindo-espaços-de-eventos)
    - [Construindo funções de probabilidade](#construindo-funções-de-probabilidade)
    - [Histograma](#histograma)
    - [Laboratório básico de física](#laboratório-básico-de-física)
  - [Distribuições](#distribuições)
    - [Distribuição binomial](#distribuição-binomial)
    - [Distribuição normal](#distribuição-normal)
    - [Distribuição de Poisson](#distribuição-de-poisson)
  - [Ferramentas computacionais](#ferramentas-computacionais)
    - [Utilidade em Python: Pandas](#utilidade-em-python-pandas)
    - [Utilidade em C: libismael](#utilidade-em-c-libismael)
  - [Apêndices](#apêndices)
    - [Licença](#licença)




## Teoria de probabilidade

A teoria de probabilidade é a base da estatística...

### Definição: Espaço amostral

O espaço amostral é o conjunto dos possíveis resultados de um experimento.
Uma amostra é um elemento do espaço amostral.

Cada tipo de experimento exige a definição de um espaço amostral
apropriado, por exemplo:

*   Em um censo de idade:
    Nesse caso o espaço amostral é o conjunto dos
    dos números naturais, $\mathbb N$ (incluindo o zero), esse conjunto
    possui infinitos elementos, ainda que apenas uma quantidade próxima
    de uma centena deles seja de fato relevante.

*   Em um censo de satisfação:
    Nesse caso o espaço amostral possui
    os níveis de satisfação, num modelo mais simples os níveis são apenas
    dois, "satisfeito" e "não satisfeito". Esse conjunto é finito e
    seus elementos não são números, em vez de propriedades quantitativas
    são propriedades qualitativas.

*   Em um censo genérico:
    Nesse caso espaço amostral é um conjunto abstrato,
    onde cada elemento descreve o *estado* da população,
    propriedades como "idade" e "felicidade" são variáveis aleatórias,
    o estudo dessas variáveis é que permitirá o desenvolvimento de modelos
    que afirmem quais informações são necessárias para descrever o estado
    da população.

*   Em qualquer sistema físico: Nesse caso o espaço amostral é um conjunto
    abstrato, o conjunto dos possíveis estados do sistema, o espaço d'estados.
    As grandezas físicas observáveis são variáveis aleatórias,
    o estudo dessas grandezas é que permitirá o desenvolvimento de modelos
    que permitam afirmar quais informações são necessárias para descrever o sistema.

    Na mecânica clássica esse conjunto é o espaço de fase e
    na termodinâmica de equilíbrio é a variedade parametrizada pelas
    variáveis termodinâmicas.

### Definição: Espaço de eventos

Um evento é, sem rigor, a descrição de uma ou mais amostras
(ou ainda a afirmação de propriedades da amostra).
Por exemplo:

*   Os alagoanos que possuem mais de vinte anos.
*   Os satisfeitos com o político Fulano.
*   Os cidadãos alagoanos votantes que aprovam o governo de Fulano.
*   Possuir energia $E$ ou momento $p$.

O terceiro exemplo é a conjunção
de "possuir mais de dezoito anos" e "estar satisfeito com o governo de Fulano".
Já o quarto exemplo é claramente uma disjunção (vide o uso do conectivo "ou").

Sabe-se que afirmações podem ser traduzidas para a linguagem de conjuntos,
para fazer isso primeiramente as propriedades devem ser traduzidas a
subconjuntos do espaço amostral, de maneira que a firmação
"$x$ possui a propriedades $A$" é traduzida como ${x\in A}$.
Logo a conjunção "$x$ possui as propriedades $A$ e $B$"
é traduzida como ${x\in(A\cap B)}$.
Também a disjunção "$x$ ou possui a propriedades $A$
ou possui a propriedades $B$" é traduzida como ${x\in(A\cup B)}$.
Finalmente a negação "$x$ não possui a propriedade $A$"
é traduzida como ${\mathcal A\setminus A}$,
onde $\mathcal A$ é o espaço amostral.
Por exemplo

*   $A$: A partícula possui energia $E$.
*   $B$: A partícula possui momento $p$.
*   $A\cap B$: A partícula possui energia $E$ **e** momento $p$.
*   $A\cup B$: A partícula **ou** possui energia $E$ **ou** possui momento $p$.
*   $\mathcal P\setminus A$: A partícula **não** possui energia $E$.

Como está claro, um evento é completamente representado por um
subconjunto do espaço amostral.
Assim o **espaço de eventos** é uma família $\mathscr E$
de subconjuntos no espaço amostral $\mathcal A$,
$\mathscr E\subset \wp(\mathcal A)$,
que possui as seguintes propriedades abaixo.

1.  O espaço amostral é um evento:  
    $\mathcal A\in\mathscr E$
2.  A negação de um evento é um evento:  
    $\forall_{A \in\mathscr E} ((\mathcal A\setminus A)\in\mathscr E)$
3.  A disjunção contável de eventos é um evento:  
    Dada uma família enumerável
    $\{A_j\in\mathscr E\}_{j\in I\subseteq\mathbb N}$,
    tem-se que $\left(\bigcup_{j\in I} A_j\right)\in\mathscr E$.

Assim, pelos teoremas de De Morgan,
também a conjunção contável de eventos é um evento,
$\left(\bigcap_{j\in I} A_j\right)\in\mathscr E$.

### Definição: Probabilidade

Informalmente,
a ideia de probabilidade nada mais é que uma maneira de medir
o quão "grande" ou "pequeno" é um evento.
Pra diferenciar o conceito de probabilidade dos conceitos de massa e volume,
se diz que a probabilidade mede o quão provável é um evento.
A probabilidade deve capturar a ideia de que quanto mais comum
às amostras for a condição que um evento representa, mais provável
será o evento e quanto mais rara às amostras for tal condição,
menos provável será o evento.

Sejam $\mathcal A$ um espaço amostral e
$\mathscr E\subseteq\wp(\mathcal A)$ um espaço e eventos de $\mathcal A$.

Uma função de probabilidade é uma função
${\mathbb P:\mathscr E\rightarrow\R}$
que possui as seguintes propriedades,
também chamadas de axiomas de Kolmogorov.

1.  A probabilidade de qualquer evento é positiva:  
    $\forall_{A\in\mathscr E} (\mathbb P(A) \geq 0)$
2.  A probabilidade do espaço amostral é 1:  
    $\mathbb P(\mathcal A) = 1$
3.  Quando um evento é particionado em outros mutuamente exclusivos entre sí,
    a soma das probabilidades das partições é igual à probabilidade do evento
    original:  
    Dada uma família enumerável
    ${\{A_j\in\Sigma\}_{j\in I\subseteq\mathbb N}}$
    disjunta, ${j\neq k\Rightarrow A_j\cap A_k = \varnothing}$,
    tem-se que
    ${\mathbb P\left(\bigcup_{j\in I} A_j\right) = \sum_{j\in I}\mathbb P(A_j)}$.

Uma função de probabilidade
permite classificar os eventos da seguinte maneira:
*   Evento impossível:
    É aquele evento $A\in\mathcal E$
    tal que $\mathbb P(A) = 0$.
*   Evento certo:
    É aquele evento $A\in\mathcal E$
    tal que $\mathbb P(A) = 1$.
*   Eventos independentes:
    São aqueles eventos $A_1\in\mathcal E$ e $A_2\in\mathcal E$
    tais que $\mathbb P(A_1 \cap A_2) = \mathbb P(A_1) \mathbb P(A_2)$.

### Teorema: Propriedades da probabilidade

Sejam $\mathcal A$ um espaço amostral,
$\mathscr E\subseteq\wp(\mathcal A)$ um espaço de eventos
e $\mathbb P:\mathscr E\rightarrow \mathbb R$ uma função de probabilidade.
$\mathbb P$ possui as seguintes propriedades.
1.  $\mathbb P(\varnothing) = 0$
2.  $\forall_{A\in\mathscr E} (\mathbb P(A) \in [0, 1])$
3.  $\forall_{A\in\mathscr E}
    (\mathbb P(A) = 1 - \mathbb P(\mathcal A\setminus A))$
4.  $\forall_{(A_1, A_2)\in\mathscr E^2}
    ( \mathbb P(A_1\cup A_2) =
    \mathbb P(A_1) + \mathbb P(A_2) - \mathbb P(A_1\cap A_2) )$
5.  $\forall_{(A_1, A_2)\in\mathscr E^2}
    ( \mathbb P(A_1\cap A_2) = \mathbb P(A_1) - \mathbb P(A_1\setminus A_2) )$

### Medidas finitas e suas probabilidades

Uma medida se parece muito com uma função de probabilidade,
exceto que para uma medida arbitrária $\mu$ o axioma
$\mathbb P(\mathcal A) = 1$ é substituído por $\mu(\varnothing) = 0$.
Assim medidas são utilizadas para definir comprimento, área, volume e
massa.

Algumas classes de conjuntos possuem uma noção "natural" de medida,
isto é, só de informar qual é o conjunto se informa também,
de maneira implícita, uma medida.
Por exemplo, o espaço euclidiano possui naturalmente uma noção de volume
que pode ser definida a partir do produto misto.

De maneira geral, quando o espaço amostral possui uma medida $\mu$
e o "volume" do espaço é finito, isto é,
$\mu(\mathcal A)$ é finito,
pode-se possuir uma função de probabilidade
${\displaystyle
   \mathbb P(A) = \frac{1}{\mu(\mathcal A)} \mu(A)
}$, o valor $\mu(\mathcal A)$ é chamado de constante de normalização.
Quando, por outro lado, $\mu(\mathcal A)$ é infinito ainda assim
é possível definir uma nova medida finita
$\nu(A) = \int_A \rho ~ d\mu$ para alguma função
$\rho:\mathcal A\rightarrow\mathbb R$ e assim tomar
a função de probabilidade como
${\displaystyle
   \mathbb P(A) = \frac{1}{\nu(\mathcal A)} \nu(A)
}$.

## Teoria estatística

### Definição: Variável aleatória

Uma variável aleatória é uma relação univalente entre dois espaços
amostrais, isto é,
uma maneira de dizer que o resultado de um experimento é
consequência do resultado de outro experimento. Por exemplo:

*   Em um censo de riqueza,
    o conjunto dos reais $\mathbb R$ é o espaço amostral.
*   Em um censo de bem-estar o conjunto dos possíveis estados de saúde
    é um espaço amostral.
*   Um censo sobre aspectos diversos da sociedade pode possuir por espaço
    amostral o conjunto das pessoas do local,
    nesse caso uma variável aleatória irá associar cada indivíduo
    à sua respectiva renda e outra o relacionará a sua sensação de bem-estar.

Sejam $\mathcal A$ e $\mathcal B$ espaços amostrais,
$\mathscr E\subseteq\wp(\mathcal A)$ e $\mathcal E\subseteq\wp(\mathcal B)$
espaços de eventos
e $\mathbb P:\mathscr E\rightarrow \mathbb R$ uma função de probabilidade.

Claro está que uma variável aleatória é uma função
$X:\mathcal A\rightarrow \mathcal B$ que possui a propriedade de que
se $B\subseteq \mathcal B$ é um evento, isto é, $B\in\mathcal E$,
então sua pré-imagem também é um evento, isto é,
$\{x\in\mathcal A ~|~ X(x)\in B\}\in\mathscr E$.

A função de probabilidade de $\mathcal B$
é denotada por $\mathbb P(X \in B)$ e definida pelo mapa
$$
    B\mapsto
    \mathbb P(X \in B) = \mathbb P\{x\in\mathcal A ~|~ X(x)\in B\}.
$$

### Moda

## Revisão preliminar

### Medidas

Dado um conjunto $U$, o domínio, pode ser de certa utilidade
saber calcular o "tamanho" de um subconjunto $A\subseteq U$,
esse tamanho é chamado de **medida** $\mu(A)$.
Acontece que nem sempre é possível calcular o tamanho
de qualquer subconjunto, assim os subconjuntos
onde é possível calcular seus tamanhos são
chamados de **conjuntos mensuráveis** e o conjunto de todos os
conjuntos mensuráveis é chamado de álgebra-$\sigma$,
note que a álgebra-$\sigma$ do domínio é sempre um subconjunto
do conjunto das partes $\wp(U)$.

O exemplo mais simples se dá quando $U$ é um conjunto finito,
digamos $U = \{1,2\}$, e a álgebra-$\sigma$ é o próprio conjunto
das partes, $\wp(U) = \{\{~\}, \{1\}, \{2\}, \{1,2\}\}$, nesse caso
a medida é a função $|A|$ que associa a cada $A\in\wp(U)$ a
quantidade de elementos que $A$ possui,
$|\{~\}| = 0$, $|\{1\}| = |\{2\}| = 1$ e $|\{1, 2\}| = 2$.
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
é uma família finita de conjuntos mensuráveis disjuntos
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
e será bem definida sempre que o domínio de integração $A$
for um subconjunto mensurável,
$\mu$ for uma medida desses conjuntos mensuráveis
e $f$ for uma função real (mensurável).

Alguns casos particulares merecem especial atenção.
Quando $U$ é enumerável então pode-se verificar que
$$
   \int_A f ~ d\mu = \sum_{x\in A} f(x) ~ \mu\{x\}.
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

## Teoria de probabilidade (bak)

A teoria de probabilidade utiliza um modelo axiomático para
estudar o conceito de probabilidade que é ensinado nas escolas de ensino
fundamental e médio.
É através desse modelo que podemos estudar sistema "complicados"
e assim desenvolver modelos estatísticos para descrever a natureza.

É interessante notar que uma função de probabilidade
é uma medida com a propriedade adicional de que $\mathbb P(\mathcal A) = 1$.
Por essa razão, é fácil ver que se $\mu$ é uma medida
tal que $\mu(\mathcal A)$ é finito
então o mapa
$$
   A\mapsto \frac{1}{\mu(\mathcal A)}\mu(A)
$$
é uma função de probabilidade,
essa medida é chamada de distribuição uniforme com respeito a $\mu$.
O valor $\mu(\mathcal A)$ é chamado de constante de normalização.



Já a distribuição de $X$ é o mapa denotado e definido por
$$
   x\mapsto\mathbb P(X = x) = \mathbb P\{y\in\mathcal A ~|~ X(y) = x\}.
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
serão apresentadas para familiarizar o leitor com os conceitos
e fornecer um bom formulário de temas simples.

Uma observação relevante a se fazer é que
em um experimento real *sempre* se olha para variáveis aleatórias,
isto é, os resultados, ou dados, são valores
em $\mathcal B$ --- assumindo a notação do fim da sessão anterior ---
fornecidos por alguma variável aleatória $X$
e não se possui, *a priori*, qualquer informação sobre $\mathcal A$,
é a partir dos dados que se pretende inferir qual a natureza de $\mathcal A$.

### Construindo espaços de eventos

Algumas classes de conjuntos possuem uma noção "natural"
de álgebra-$\sigma$, isto é,
há conjuntos, a maioria deles, onde o problema informará
qual é o espaço amostral mas o espaço de eventos ficará implícito.
As duas classes de conjuntos que merecem especial atenção
são a dos conjuntos enumeráveis e a dos espaços topológicos.

Quando um espaço amostral $\mathcal A$ possui uma quantidade
finita ou pelo menos enumerável de amostras,
usualmente assume-se que o espaço de eventos
é o conjunto das partes $\wp(\mathcal A)$.
Assim a esperança de uma variável aleatória $X$
é calculada utilizando a relação 
${\displaystyle
   \mathbb E(X)  = \sum_{a\in\mathcal A} X(a) \mathbb P(X = a)}$.

Quando, por outro lado,
o espaço amostral é o $\mathbb R^n$,
usualmente assume-se que o espaço de eventos é a álgebra de Borel,
aquela onde pelo menos todos os abertos do $\mathbb R^n$ são eventos.
Nesses casos é comum que a função de probabilidade possua uma
*densidade*, isto é, que exista uma função integrável
$\rho:\mathbb R^n\rightarrow\mathbb R$ tal que
$\mathbb P(A) = \int_A \rho(x) dx$,
isso permite calcular a esperança de $X$ utilizando a relação 
${\displaystyle
   \mathbb E(X) = \int_{\mathbb R^n} X(x) \rho(x) ~ dx}$.
De maneira geral, a álgebra de Borel é usualmente escolhida como
espaço de eventos de qualquer conjunto que possui uma topologia.

Ainda mais uma construção é relevante.
Em experimentos envolvendo repetição, como lançar um dado $N$ vezes,
o espaço amostral é o produto cartesiano $\mathcal A = U^N$ de um espaço amostral mais simples $U$ com um espaço de eventos $\Sigma$.
Nesses casos escolhe-se para $\mathcal A$ algum espaço de eventos
que contém todos os produtos cartesianos
$A_1\times\cdots\times A_N$, com $A_n\in\Sigma$.

### Construindo funções de probabilidade



Como caso particular, quando o espaço amostral é finito
a função de probabilidade onde todas as amostras ocorrem com a mesma
probabilidade é ${\mathbb P(A) = \frac{1}{|\mathcal A|} |A|}$, isto é,
a probabilidade de um evento depende somente da quantidade de amostras
que satisfazem o evento e da quantidade total de amostras,
este é o caso de um dado honesto, por exemplo.

Um outro exemplo bastante comum é quando se possui um espaço amostral
$A$, um espaço de eventos $E$ e uma função de probabilidade $P$ e
então o experimento é realizado $N$ vezes.
Como mostrado na subseção anterior, o espaço amostral de realizar o
experimento $N$ vezes é claramente $\mathcal A = A^N$
e o espaço de eventos $\mathcal E$ deve possuir os produtos cartesianos
da forma $A_1\times\cdots\times A_N$, com $A_n\in E$,
nessa construção uma função de probabilidade possível satisfaz à relação
${\mathbb P(A_1\times\cdots\times A_N) = P(A_1)\cdots P(A_N)}$,
quando essa função de probabilidade representa bem o experimento
se diz que os eventos são independentes.

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
ser repetido indefinidamente, de maneira independente,
então esse mapa irá convergir
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
$\tilde X = \bar X ± \sigma_X$; 2) Este caso é mais interessante,
nele se admite que a distribuição obtida reflete a distribuição probabilidade...


## Distribuições

### Distribuição binomial

...

Finalmente, para $m\in\{N, N-2, \cdots, N+2, N\}$ tem-se

$$
   \mathbb P(x = m) =
   \frac{N!}{
      \left(\frac{N + m}{2}\right)!
      \left(\frac{N - m}{2}\right)!
   } p^{\frac{N + m}{2}} q^{\frac{N - m}{2}}
$$

### Distribuição normal

### Distribuição de Poisson

## Ferramentas computacionais

### Utilidade em Python: Pandas

```py
import pandas as pd
```

### Utilidade em C: libismael

```c
#include <ismael.h>
```

## Apêndices

### Licença

```
MIT License

Copyright (C) 2023 I.F.F. dos SANTOS

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

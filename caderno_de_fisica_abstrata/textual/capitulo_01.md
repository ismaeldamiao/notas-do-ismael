# Estados físicos

## Introdução

## Definição: Espaço d'estados

> O espaço d'estados é a classe
> de todos os estados possíveis de um sistema físico.

## Definição: Classe dos observáveis

Um observável é uma função
$f:\mathcal D_f\subset\mathcal E\rightarrow\mathbb R$
que representa um aparato experimental, real ou idealizado.

A soma de dois observáveis $f$ e $g$ é a função
$(f+g):\mathcal D_f\cap\mathcal D_g\rightarrow\mathbb R$
definida pelo mapa
$x\mapsto f(x) + g(x)$.
Tal soma representa um aparato idealizado e portanto é também um observável.

O produto de dois observáveis $f$ e $g$ é a função
$(fg):\mathcal D_f\cap\mathcal D_g\rightarrow\mathbb R$
definida pelo mapa
$x\mapsto f(x) g(x)$.
Tal produto representa um aparato idealizado e portanto é também um observável.


> A classe dos observáveis é a classe de todos os observáveis.

Se $\mathcal E$ é o espaço d'estados então
a classe dos observáveis é denotada por $\mathcal O(\mathcal E)$.

## Axioma: Dos varoles reais

> Um aparato experimental sempre associa um estado do sistema
> a um número real.
> $$
\forall_{f\in\mathcal O(\mathcal E)}
\forall_{(x, y)\in f}
\exists_{z\in\mathcal E}
\exists_{f(z)\in\mathbb R}
((x, y) = (z, f(z))
$$

## Axioma: Da univalência

> Um estado observável possui uma única medida, para qualquer observável.
> $$
\forall_{f\in\mathcal O(\mathcal E)}
\forall_{(x, f(x))\in f}
\forall_{y\in\mathbb R}
(
   ((x, y)\in f)
   \Rightarrow
   (f(x) = y)
)
$$

## Axioma: Da álgebra dos observáveis

Seja
$$(f + g h) = \{(x, y)\in f ~|~ (x, y) = (x, f(x) + g(x) h(x))\}$$

> A soma ou o produto de observáveis é também um observável.
> $$
\forall_{f\in\mathcal O(\mathcal E)}
\forall_{g\in\mathcal O(\mathcal E)}
\forall_{h\in\mathcal O(\mathcal E)}
((f+g h)\in\mathcal O(\mathcal E))
$$

## Lema

> A classe dos observáveis é um anel.

## Torema

> O espaço d'estados é uma variedade de dimensão real $n$ se,
> e somente se,
> sua classe dos observáveis possue uma base com $n$ elementos.
# Lógica e retórica

A segunda arte clássica é a lógica,
essa arte estuda o raciocínio.
A lógica formal utiliza alguma linguagem para expressar os argumentos
utilizados durante o processo do raciocínio,
assim pode-se dizer que a lógica formal é uma
aplicação da gramática.

O ponto de partida da lógica clássica é o estudo das proposições,
uma proposiçao é uma afirmação que pode ser verdadeira (V) ou falsa (F),
isso difere do vernáculo, onde existem fórmulas que não são proposições.
Nos exemplos abaixo apenas a última fórmula é uma proposição.

* Onde está o gato?
* Resolva essa integral.
* Essa equação é linear.

Também é possível conectar duas ou mais proposições para obter uma nova
proposição, há mais de uma maneira de fazer isso e os conectivos que
aparecem na lógica clássica são comumente a conjunção, a disjunção,
o condicional e o bicondicional.

* Buracos negros possuem cabelos **e** também possuem carga.
* O gato está vivo **ou** está morto.

Como no vernáculo, também na lógica as proposições possuem internamente uma
estrutura gramatical --- no exemplo acima há um sujeito, o gato,
e um predicado, a propriedade de estar vivo (ou morto) ---,
toda proposição possui um sujeito, um objeto do qual se afirma ou nega algo,
e um predicado, uma propriedade.
As proposições também podem ser quantificadas,
como nos exemplos abaixo.

* **Todos** os electrões possuem a mesma carga.
* **Alguns** corpos possuem massa.
* **Nenhuma** função possui essas propriedades.

Essas são as estruturas gramaticais que uma lógica clássica deve reproduzir,
mas a lógica também precisa de regras de inferência,
que são instuções de como escrever novas fórmulas de maneira que o texto
final seja um argumento válido.
Uma regra de inferência é representada por
${[\varphi]\vdash\psi}$ onde $\varphi$ e $\psi$ devem ser fórmulas,
$\varphi$ é chamada de **premissa** da qual se desprende a **tese** $\psi$,
pode-se ter mais de uma premissa como em
${[\varphi_1, \varphi_2]\vdash\psi}$, essa notação diz que se as fórmulas
$\varphi_1$ e $\varphi_2$ aparecem em um argumento então,
por razões sintáticas (gramaticais), $\psi$ pode aparecer no argumento,
nesse caso diz-se que pode-se inferir $\psi$ a partir das premissas
e o símbolo $\vdash$ serve para enfatizar o fato de que essa é uma consequência
sintática do uso correto das regras gramaticais.

Neste capítulo abordarei os temas relacionados à logica clássica,
iniciando pelo cálculo proposicional,
passando pelo cálculo de predicados e concluíndo com o cálculo quantifacional.
Também apresentarei um sistema lógico formal, uma linguagem
cujo objetivo é permitir a argumentação retórica usual da lógica clássica.
Meu sistema tenta ser minimalista,
seu alfabeto original possui apenas um conectivo lógico,
um quantificador e o símbolo de pertinência utilizado para definir
predicados, logo são definidas abreviações que permitem simplificar
as fórmulas e melhorar a compreenção dos argumentos.

## Sistema formal

### Síntaxe

* Cálculo proposicional
  * $\uparrow\mathtt{I}$ -- Introdução do $\uparrow$  
    $[[\varphi_1] \vdash (\varphi_2\uparrow\varphi_2)] \vdash (\varphi_1\uparrow\varphi_2)$
  * $\uparrow\mathtt{E}$ -- Eliminação do $\uparrow$  
    $[\varphi_1, (\varphi_2\uparrow\varphi_1)] \vdash (\varphi_2\uparrow\varphi_2)$
  * $\uparrow\uparrow\mathtt{E}$ -- Eliminação do duplo $\uparrow$  
    $[\varphi_1, ((\varphi_2\uparrow\varphi_2)\uparrow\varphi_1)]\vdash \varphi_2$
* Cálculo de predicados
* Cálculo quantificacional
  * $\exists\mathtt{I}$ -- Generalização existencial  
    $[(\sigma_1\in\Sigma)]\vdash \exists_{\sigma_2} (\sigma_2\in\Sigma)$
  * $\exists\mathtt{E}$ -- Instanciação existencial  
    $[\exists_{\sigma_1} (\sigma_1\in\Sigma), [\sigma_2\in\Sigma]\vdash\varphi]\vdash\varphi$

### Semântica

O **cálculo proposicional** ou **cálculo de proposições**
é a parte da lógica que estuda as proposiçoes sem se preocupar com sua
estrutura interna.

## Abreviações

### Síntaxe

* $\neg\varphi$ abrevia  
  ${(\varphi\uparrow\varphi)}$
* ${(\varphi_1\land\varphi_2)}$ abrevia  
  ${((\varphi_1 \uparrow \varphi_2) \uparrow (\varphi_1 \uparrow \varphi_2))}$
* ${(\varphi_1\Rightarrow\varphi_2)}$ abrevia  
  ${(\varphi_1\uparrow(\varphi_2\uparrow\varphi_1))}$
* ${(\varphi_1\lor\varphi_2)}$ abrevia  
  ${((\varphi_1\uparrow\varphi_1)\uparrow(\varphi_2\uparrow\varphi_2))}$
* ${\varphi_1\Leftrightarrow\varphi_2}$ abrevia  
  ${(((\varphi_1\uparrow\varphi_1)\uparrow((\varphi_2\uparrow\varphi_2)\uparrow(\varphi_2\uparrow\varphi_2)))\uparrow((\varphi_2\uparrow\varphi_2)\uparrow((\varphi_1\uparrow\varphi_1)\uparrow(\varphi_1\uparrow\varphi_1))))}$
* ${(\sigma\notin\Sigma)}$ abrevia  
  ${((\sigma\in\Sigma)\uparrow (\sigma\in\Sigma))}$
* ${\forall_{\sigma}\varphi}$ abrevia  
  ${(\exists_{\sigma}(\varphi\uparrow\varphi)\uparrow\exists_{\sigma}(\varphi\uparrow\varphi))}$

### Semântica

## Retórica

As seguintes regras de inferência resultam de
aplicações sucessívas das regras originais do sistema formal,
por essa razão diz-se que as seguintes regras são teoremas.
Para ser mais rigoroso devo classifica-las como _metateoremas_,
no sentido de que informam como utilizar o sistema formal
para demonstrar teoremas, e por essa razão as chamarei de _argumentos_.

### Argumento: Modus Ponens

* $\Rightarrow\mathtt{E}$  
  $[(\varphi_1\Rightarrow\varphi_2), \varphi_1]~\vdash~\varphi_2$

### Argumento: Modus Tollens

* $\mathtt{MT}$  
  $[(\varphi_1\Rightarrow\varphi_2), \lnot\varphi_2]~\vdash~\lnot\varphi_1$

### Argumento: Dilema construtivo

* $\mathtt{DC}$  
  $[(\varphi_1\Rightarrow\varphi_2), (\varphi_3\Rightarrow\varphi_4), (\varphi_1\lor\varphi_3)]~\vdash~(\varphi_2\lor\varphi_4)$

### Argumento: Dilema destrutivo

* $\mathtt{DD}$  
  $[(\varphi_1\Rightarrow\varphi_2), (\varphi_3\Rightarrow\varphi_4), (\lnot\varphi_2\lor\lnot\varphi_4)]~\vdash~(\lnot\varphi_1\lor\lnot\varphi_3)$

### Argumento: Adjunction

### Argumento: Simplification

### Argumento: Addition

### Argumento: Case analysis

### Argumento: Biconditional elimination

### Argumento: Biconditional introduction

### Argumento: Universal Generalization

### Argumento: Universal Instantiation

### Argumento: Hypothetical syllogism

* Absorption
* Resolution
* De Morgan's laws

### Argumento: Ex contradictione quodlibet

### Argumento: Reductio ad absurdum

### Argumento: Reductio ad absurdum

* $\lnot\mathtt I$  
  $[[\varphi_1]\vdash\varphi_2, [\varphi_1]\vdash\lnot\varphi_2]~\vdash~\lnot\varphi_1$

### Argumento: Deductio

* $\Rightarrow\mathtt{I}$  
  $[[\varphi_1]\vdash\varphi_2]~\vdash~(\varphi_1\Rightarrow\varphi_2)$

### Argumento:

* $\lor\mathtt{I}$  
  $[\varphi_1]~\vdash~(\varphi_1\lor\varphi_2)$
* $\lor\mathtt{E}$  
  $[(\varphi_1\Rightarrow\varphi_3), (\varphi_2\Rightarrow\varphi_3),(\varphi_1\lor\varphi_2)]~\vdash~\varphi_3$
* $\Leftrightarrow\mathtt{I}$  
  $[(\varphi_1\Rightarrow\varphi_2), (\varphi_2\Rightarrow\varphi_1)]~\vdash~\varphi_1\Leftrightarrow\varphi_2$
* $\Leftrightarrow\mathtt{E}$  
  $[(\varphi_1\Leftrightarrow\varphi_2)]~\vdash~(\varphi_1\Rightarrow\varphi_2)$




## Cálculo proposicional

O **cálculo proposicional** ou **cálculo de proposições**
é a parte da lógica que estuda as proposiçoes sem se preocupar com sua
estrutura interna.
Para trabalhar o cálculo proposicional irei desenvolver um
sistema formal, uma linguagem.
Nessa linguagem muitas fórmulas são proposições, de maneira que a linguagem
é bastante limitada para o uso cotidiano mas, se bem desenvolvida,
será útil para a lógica.

No alfabeto da linguagem coloco o conectivo de Sheffer,
cujo símbolo é $\uparrow$,
esse simbolo é chamado de conectivo lógico pois,
dadas duas fórmulas $\varphi_1$ e $\varphi_2$,
tem-se que $(\varphi_1\uparrow\varphi_2)$ também é uma fórmula,
os parêntesis na nova fórmula são necessários para evitar ambiguidades
na notação.

**Regras de inferência:**

* $\uparrow\mathtt I$ -- Introdução do $\uparrow$  
  Infere-se $(\varphi_1\uparrow\varphi_2)$
  quando $\varphi_1$ pode ser inferido de $(\varphi_2\uparrow\varphi_2)$.  
  $[[\varphi_1] \vdash (\varphi_2\uparrow\varphi_2)] \vdash (\varphi_1\uparrow\varphi_2)$
* $\uparrow\mathtt E$ -- Eliminação do $\uparrow$  
  Infere-se $(\varphi_2\uparrow\varphi_2)$
  a partir de $\varphi_1$ e de $(\varphi_2\uparrow\varphi_1)$.  
  $[\varphi_1, (\varphi_2\uparrow\varphi_1)] \vdash (\varphi_2\uparrow\varphi_2)$
* $\uparrow\uparrow\mathtt E$ -- Eliminação do duplo $\uparrow$  
  Infere-se $\varphi_2$
  a partir de $\varphi_1$ e de $((\varphi_2\uparrow\varphi_2)\uparrow\varphi_1)$.  
  $[\varphi_1, ((\varphi_2\uparrow\varphi_2)\uparrow\varphi_1)]\vdash \varphi_2$

Esses argumentos soam algo como:
* $\uparrow\mathtt I$
  1. Infere-se que sua entropia não é S quando sua temperatura é T.
  1. Portanto, não é o caso que sua e temperatura é T e sua entropia é S.
* $\uparrow\mathtt E$
  1. Sua temperatura é T.
  1. Não é o caso que sua entropia é S sua e temperatura é T.
  1. Portanto, sua entropia não é S.`
* $\uparrow\uparrow\mathtt E$
  1. Sua temperatura é T.
  1. Não é o caso que sua entropia não é S e sua temperatura é T.
  1. Portanto, sua entropia é S.

Os demais conectivos lógicos serão definidos como abreviações,
o que servirá de primeiro exemplo da utilidade do conectivo de Sheffer..

### Negação

A negação de uma sentença $\varphi$ é definida como
${(\varphi\uparrow\varphi)}$ e é abreviada por
${\neg\varphi}$.  
$\varphi$: `Sua temperatura é T.`  
$\neg\varphi$: `Sua temperatura não é T.`

As regras de inferência do conectivo de Sheffer escritas utilizado o
operador negação ficam:
* $[[\varphi_1]\vdash\lnot\varphi_2]~\vdash~\varphi_1\uparrow\varphi_2$
* $[\varphi_1, \varphi_2\uparrow\varphi_1]~\vdash~\lnot\varphi_2$
* $[\varphi_1, (\lnot\varphi_2\uparrow\varphi_1)]~\vdash~\varphi_2$

### Conjunção

A conjunção de duas sentenças
$\varphi_1$ e $\varphi_2$ é definida como
${((\varphi_1 \uparrow \varphi_2) \uparrow (\varphi_1 \uparrow \varphi_2))}$
e é abreviada por ${(\varphi_1\land\varphi_2)}$.  
$\varphi_1$: `Sua temperatura é T.`  
$\varphi_2$: `Seu volume é V.`  
$\varphi_1\land\varphi_2$: `Sua temperatura é T e seu volume é V.`

### Condicional material

Uma sentença $\varphi_2$ é uma consequência material de
uma sentença $\varphi_1$ quando
${(\varphi_1\uparrow(\varphi_2\uparrow\varphi_1))}$,
o que é abreviado por ${(\varphi_1\Rightarrow\varphi_2)}$.  
$\varphi_1$: `Sua temperatura é T.`  
$\varphi_2$: `Sua entropia é S.`  
$(\varphi_1\Rightarrow\varphi_2)$:
`Se sua temperatura é T então sua entropia é S.`

### Disjunção

A disjunção de duas sentenças
$\varphi_1$ e $\varphi_2$ é definida como
${((\varphi_1\uparrow\varphi_1)\uparrow(\varphi_2\uparrow\varphi_2))}$
e é abreviada por ${(\varphi_1\lor\varphi_2)}$.  
$\varphi_1$: `Sua temperatura é T.`  
$\varphi_2$: `Seu volume é V.`  
$\varphi_1\land\varphi_2$: `Sua temperatura é T ou seu volume é V.`

### Bicondicional

Duas sentenças $\varphi_1$ e $\varphi_2$ são equivalentes quando
${(((\varphi_1\uparrow\varphi_1)\uparrow((\varphi_2\uparrow\varphi_2)
\uparrow(\varphi_2\uparrow\varphi_2)))\uparrow((\varphi_2\uparrow\varphi_2)
\uparrow((\varphi_1\uparrow\varphi_1)\uparrow(\varphi_1\uparrow\varphi_1))))}$,
o que é abreviado como ${\varphi_1\Leftrightarrow\varphi_2}$.  
$\varphi_1$: `Sua temperatura é T.`  
$\varphi_2$: `Sua entropia é S.`  
$\varphi_1\Leftrightarrow\varphi_2$:
`Sua temperatura é T se, e somente se, sua entropia é S.`

## Cálculo de predicados

O **cálculo de predicado** é utilizado para, dentro de uma sentença,
fazer distinção entre sujeito e predicado, aquilo que se diz do sujeito.
Por exemplo, na proposição "`a maçã é pesada.`" a maçã é o sujeito
do qual se afirma que possui peso, o predicado que é a propriedade do sujeito.
A linguagem utilizada para uma lógica clássica
deve ser capaz de utilizar um símbolo para a propriedade e outro
para o sujeito, por exemplo:  
$\mathtt{P}$: `propriedade de possuir peso não nulo`  
$\mathtt{m}$: `maçã`  
$\mathtt{P(m)}$: `A maçã é pesada`.

Outra maneira equivalente parte da ideia de que se pode
classificar coisas com a mesma propriedade,
isto é, uma propriedade é equivalente a uma classe:  
$\mathtt{A}$: `Classe das coisa com peso não nulo`  
$\mathtt{m}$: `maçã`  
$\mathtt{m\in A}$: `A maçã é pesada`.

No alfabeto da linguagem coloco o
**símbolo de pertinência** $\in$.
Os símbolos que representam o sujeito e o predicado
são chamados de termos, de maneira que se
$\sigma$ e $\Sigma$ são termos então
${(\sigma\in\Sigma)}$ é uma fórmula.

### Negação da pertinência

Diz-se que $\sigma$ não possui uma dada propriedade $\Sigma$ quando
${((\sigma\in\Sigma)\uparrow (\sigma\in\Sigma))}$,
o que é abreviado como ${(\sigma\notin\Sigma)}$.  
$\mathtt{A}$: `Classe das coisa com peso não nulo`  
$\mathtt{x}$: `fotão`  
$\mathtt{x\notin A}$: `O fotão não é pesado`.

## Cálculo quantificacional

O **cálculo quantifaciocal** permite quantificar as sentenças,
tornando possível expressões como  
`toda partícula possui uma antipartícula` e  
`algumas partículas possuem carga`.

No alfabeto da linguagem coloco coloco o
**quantificar existencial**, simbolizado por $\exists$.
As variáveis são símbolos que aparecem como índices
do quantificador de maneira que
se $\sigma$ é uma variável e $\varphi$ se torna uma fórmula
ao considar $\sigma$ um termo toda vez que aparecer em $\varphi$
então ${\exists_{\sigma}\varphi}$ é uma fórmula.

**Regras de inferência:**

* Generalização existencial ($\exists\mathtt I$):  
  Infere-se $\exists_{\sigma_2} (\sigma_2\in\Sigma)$
  a partir de $(\sigma_1\in\Sigma)$.  
  $[(\sigma_1\in\Sigma)]\vdash \exists_{\sigma_2} (\sigma_2\in\Sigma)$
* Instanciação existencial ($\exists\mathtt E$):  
  Infere-se $\varphi$ a partir de $\exists_{\sigma_2} (\sigma_2\in\Sigma)$
  quando $\varphi$ também pode ser inferido a partir de $(\sigma_1\in\Sigma)$.  
  $[\exists_{\sigma_1} (\sigma_1\in\Sigma), [\sigma_2\in\Sigma]\vdash\varphi]\vdash\varphi$

Esses argumentos soam algo como:
* $\exists\mathtt I$:  
  `O electrão possui spin.`  
  `Portanto, alguma coisa possui spin.`
* $\exists\mathtt E$:  
  `Alguma coisa é um fermião.`  
  `Infere-se que o electrão possui spin do facto de que o positrão é um fermião.`  
  `Portanto, o electrão possui spin.`

### Quantificador universal

Diz-se que a fórmula $\varphi$ é verdadeira para qualquer ocorrência
de uma variável $\sigma$ quando
${(\exists_{\sigma}(\varphi\uparrow\varphi)\uparrow\exists_{\sigma}(\varphi\uparrow\varphi))}$, o que é abreviado como
${\forall_{\sigma}\varphi}$.

### Igualdade

Seguindo a idéia de Leibniz, diz-se que
duas coisas $\sigma_1$ e $\sigma_2$
são iguais se possuem as mesmas propriedades, isto é,
${\forall_{\Sigma}((\sigma_1\in \Sigma)\Leftrightarrow (\sigma_2\in\Sigma))}$,
o que é abreviado como
${(\sigma_1 = \sigma_2)}$.  
$\sigma_1$: `Treco que parece com um gato, mia como um gato e age como um gato`  
$\sigma_2$: `Gato`  
$\sigma_1 = \sigma_2$: `O treco é um gato`.
# As leis da termodinâmica

- [As leis da termodinâmica](#as-leis-da-termodinâmica)
  - [Noções primitivas e definições](#noções-primitivas-e-definições)
    - [Processos](#processos)
    - [Equilíbrio termodinâmico](#equilíbrio-termodinâmico)
    - [Temperatura](#temperatura)
    - [Trabalho](#trabalho)
  - [Postulados](#postulados)
    - [Postulado: Lei zero da termodinâmica](#postulado-lei-zero-da-termodinâmica)
    - [Postulado: Primeira lei da termodinâmica](#postulado-primeira-lei-da-termodinâmica)
    - [Postulado: Segunda lei da termodinâmica](#postulado-segunda-lei-da-termodinâmica)
    - [Postulado: Terceira lei da termodinâmica](#postulado-terceira-lei-da-termodinâmica)
  - [As leis da termodinâmica em espaços topológicos](#as-leis-da-termodinâmica-em-espaços-topológicos)
    - [Introdução](#introdução)
    - [Teorema: Primeira lei da termodinâmica](#teorema-primeira-lei-da-termodinâmica)
    - [Teorema: Segunda lei da termodinâmica](#teorema-segunda-lei-da-termodinâmica)
  - [Modelos termodinâmicos](#modelos-termodinâmicos)
    - [Variáveis termodinâmicas](#variáveis-termodinâmicas)
    - [Potenciais termodinâmicos](#potenciais-termodinâmicos)
    - [Colorário: Equações de estado e de Maxwell](#colorário-equações-de-estado-e-de-maxwell)
    - [Ver depois](#ver-depois)


## Noções primitivas e definições

Como toda teoria física,
na termodinâmica a noção primitiva mais fundamental é o
espaço d'estados, também referido como espaço de fase,
esse espaço é a classe,
ora denotada por $\mathcal M$,
de todos os estados que o sistema pode ser encontrado.
Entretanto, algumas noções particulares à termodinâmica devem ser aclaradas.

### Processos

Um processo termodinâmico é uma curva $C$
no espaço d'estados parametrizada pelo tempo,
conforme medido no laboratório.
Quando não for indicado de outro modo,
a parametrização do processo será denotada por
$\gamma_C:[t_0, t_f]\rightarrow C\subset\mathcal M$.

### Equilíbrio termodinâmico

Diz-se que dois sistemas termodinâmicos
estão em equilíbrio quando um não exerce qualquer
ação sobre o outro para mudar seu estado.
O equilíbrio é identificado e classificado
pela inalterabilidade de um ou mais observáveis
do sistema.

Um estado de equilíbrio é aquele no qual o sistema
de estudo está em equilíbrio consigo mesmo
e com o seu entorno.

Um processo é dito quase-estático se,
de acordo com qualquer procedimento experimental,
todos os seus estados forem estados de equilíbrio
e se for contínuo.

### Temperatura

A temperatura é a medida obtida com o termômetro.
Diz-se que um sistema possui temperatura $T$ se,
e somente se, está em equilíbrio com algum termômetro
indicando o escalar $T$.

### Trabalho

A *quantidade de trabalho* é a medida do esforço mecânico
para exercer sobre um sistema uma ação com o objetivo
de alterar seu estado de determinada maneira.

Assim o trabalho deve ser alguma função
$W$ que associa a cada processo $C$ em $\mathcal M$
o trabalho $W(\gamma_C)\in\mathbb R$
realizado nesse processo.

Um trabalho positivo, $W(\gamma_C) > 0$,
indica que o sistema ganhou energia e por isso
diz-se que o sistema recebeu trabalho.
Já um trabalho negativo, $W(\gamma_C) < 0$,
indica que energia saiu do sistema e por essa razão
diz-se que o sistema realizou trabalho.

## Postulados

### Postulado: Lei zero da termodinâmica

> Se dois sistemas estão em equilíbrio com um
> terceiro então eles estão em equilíbrio entre sí.

Assim, considerando que um termômetro indica que
um sistema $A$ possui temperatura $T$,
se o mesmo termômetro também indicar que um sistema $B$
possui temperatura $T$ então os sistemas $A$ e $B$
estão em equilíbrio pois, por definição de temperatura,
estão ambos em equilíbrio com o termômetro.

### Postulado: Primeira lei da termodinâmica

> Dados dois estados de equilíbrio,
> existe algum processo quase-estático que
> conecta esses estados tal que o trabalho
> desse processo depende somente desses dois estados.

Assim, sendo $\gamma_C$ a paremetrização do processo
e $W(\gamma_C)$ seu trabalho, a dependência com os
estados inicial e final é chamada de
*variação da energia interna* e denotada por
$\Delta U(\gamma_C(t_0);\gamma_C(t_f))$,
de maneira que a primeira é expressa como
$$
\Delta U(\gamma_C(t_0);\gamma_C(t_f)) = W(\gamma_C).
$$

Como está claro, podem existir processos
que não satisfazem à relação acima.
Por essa razão é conveniente classificar os processos
em adiabáticos ou não,
a relação acima define os processos adiabáticos
enquanto que os processos que não são adiabáticos
definem a *quantidade de calor* $Q$ como sendo
a diferença entre a variação da energia interna e
o trabalho, isto é,
$$
Q(\gamma_C) =
\Delta U(\gamma_C(t_0);\gamma_C(t_f)) - W(\gamma_C).
$$

### Postulado: Segunda lei da termodinâmica

> Dados dois estados de equilíbrio,
> existe algum processo (quase-estático?) que
> conecta esses estados e que não é adiabático.

Assim, existe algum processo $\gamma$ tal que
$Q(\gamma) \neq 0$.

### Postulado: Terceira lei da termodinâmica

## As leis da termodinâmica em espaços topológicos

### Introdução

A hipótese topológica
> O espaço d'estados de qualquer sistema termodinâmico
> é uma variedade de classe $C^2$( com uma 1-forma
> diferencial $\Theta$, a forma de energia).

> [...],
> então existe uma única forma diferencial
> $\delta W$ tal que
> $$W(\gamma) = \int_{\operatorname{Im}_\gamma} \delta W,$$

A 1-forma de energia é $\delta W + \delta Q$ e
a forma de Gibbs é definida como
$$
\Theta_G = dU - \delta W - \delta Q,
$$
de maneira que a primeira lei da termodinâmica é a
equação de Pfaff $\Theta_G = 0$,


### Teorema: Primeira lei da termodinâmica

> Sob a hipótese [ref],
> a variedade de equilíbrio $\mathcal L$
> é conexa por caminho e
> existe uma função de estado
> $U:\mathcal M\rightarrow\mathbb R$
> tal que para todo
> $x\in\mathcal L\subset\mathcal M$
> $$dU|_x = \delta Q|_x + \delta W|_x.$$

Demonstração:

### Teorema: Segunda lei da termodinâmica

> Sob a hipótese [ref],

## Modelos termodinâmicos

### Variáveis termodinâmicas

### Potenciais termodinâmicos

### Colorário: Equações de estado e de Maxwell

> Sob a hipótese [ref],
> se $\{q^0, q^i, p_i\}_{i=1}^{n}$
> é um sistema de coordenadas de $\mathcal M$ tal que
> $\Theta = dq^0 - \sum_{i=1}^{n} p_i dq^i$
> então no equilíbrio, $x\in\mathcal L$, vale que
> $$p_i = \frac{\partial}{\partial q^i} q^0,$$
> além disso
> $$\frac{\partial}{\partial q^i}\frac{\partial}{\partial q^j} q^0 - \frac{\partial}{\partial q^j}\frac{\partial}{\partial q^i} q^0 = \frac{\partial}{\partial q^i} p_j - \frac{\partial}{\partial q^j} p_i = 0.$$

### Ver depois

Como todo sistema físico,
o estado de um sistema termodinâmico é um elemento de um conjunto
$\mathcal M$ chamado de **espaço d'estados** ou **espaço de fase**.
As grandezas físicas observáveis são funções
$f:\mathcal D_f\subset\mathcal M\rightarrow\mathbb R$,
onde o domínio $\mathcal D_f$ da função pode ou não ser o espaço d'estados
completo, especialmente nos casos da termodinâmica e da mecânica quântica
esse não é o caso, chama-se de **classe dos observáveis**
$\mathcal O(\mathcal M)$ ao conjunto dessas funções.

Na termodinâmica um dos principais interesses é o estudo das mudanças no estado,
as mudanças são chamadas de **processos termodinâmicos**
e a cada processo está associada uma curva
$\gamma:[0, 1]\rightarrow\mathcal M$.
Desde Aristóteles sabe-se que à mudanças no estado deve-se associar um
trabalho realizado para provocar tal mudança,
assim na termodinâmica a cada sistema associa-se
um funcional $\varepsilon$ que associa a cada processo um número real,
uma grandeza chamada de energia.
Da geometria diferencial sebe-se também que se $\mathcal M$
possui uma estrutura diferenciável apropriada
então existe uma única 1-forma diferencial $\delta\varepsilon$
tal que para processos suficientemente suaves tem-se
$$
   \varepsilon[\gamma] = \int_{\operatorname{Im}_\gamma} \delta\varepsilon.
$$

Há ainda classes de processos e estados,
os estados de **equilíbrio** mútuo entre dois sistemas
são aqueles em que um não é a causa de mudanças no estado do outro,
já os estados de equilíbrio interno de um sistema são aqueles
onde o sistema permanecerá em tal estado, a menos que outro sistema exerça
sobre ele uma ação com o fim de alterar tal estado.
Os processos **quase-estáticos** são aqueles processos contínuos nos quais
o sistema sempre permanece em estados de equilíbrio interno.

Finalmente, de acordo com a primeira lei da termodinâmica,
sempre há um processo quase-estático que conecta dois estados de equilíbrio
quaisquer de um sistema e o trabalho realizado em tal processo
será independente do processo, dependendo somente dos estados inicial e
final.
Em outras palavras, a variedade de equilíbrio $\mathcal L\subset\mathcal M$
é conexa por caminho (*princípio de acessibilidade*)
e existe uma função de estado (*princípio de conservação de energia*)
$U:\mathcal L\rightarrow\mathbb R$ tal que
$$
   \mathcal L = \{z\in\mathcal M ~:~ \delta\varepsilon|_z = dU|_z \}.
$$

A forma diferencial
$\Theta_G = dU - \delta\varepsilon$
é chamada de 1-forma de Gibbs,
como se pode ver a importância dessa forma consiste no fato de
que ela descreve completamente o equilíbrio do sistema.
De fato, a conservação de energia impõem a equação de Pfaff $\Theta_G = 0$,
além disso, de acordo com a acessibilidade,
tal equação deve ser integrável *em certos processos quase-estáticos*,
o que, de acordo com o teorema de Frobenius,
é necessariamente satisfeito se $\Theta_G\wedge d\Theta_G = 0$,
essa última equação somente será satisfeita se $U$ for pelo menos
duas vezes diferenciável em tais processos pois $d^2 = 0$ e
portanto a condição de integrabilidade impõem a equação
$d^2U = d(\delta\varepsilon) = 0$,
desde que $\mathcal L$ possua dimensão finita.

Na prática, dada uma carta
$\{x^i:\mathcal L\rightarrow\mathbb R\}_{i = 1}^n$,
essas funções de coordenadas são usualmente grandezas observáveis
chamadas de variáveis termodinâmicas,
essas variáveis definem outras variáveis conjugadas
$f_i = \delta\varepsilon\left(\frac{\partial}{\partial x^i}\right)$.
Utilizando essa representação local a equação Pfaff, $\Theta_G = 0$, reduz
ao conjunto de equações diferenciais parciais de primeira ordem
conhecido como \textbf{equações d'estado},
\begin{equation}
   \frac{\partial}{\partial x^i} U = f_i,
\end{equation}
já a condição de integrabilidade, $d^2U = d(\delta\varepsilon) = 0$,
reduz ao conjunto de equações diferenciais parciais de segunda ordem
conhecido como \textbf{relações de Maxwell},
$$
   \frac{\partial}{\partial x^j}\frac{\partial}{\partial x^i} U -
   \frac{\partial}{\partial x^i}\frac{\partial}{\partial x^j} U =
   \frac{\partial}{\partial x^j} f_i -
   \frac{\partial}{\partial x^i} f_j =  0.
$$

Já a segunda lei da termodinâmica afirma que
não há um processo cujo único efeito seja diminuir a temperatura de um corpo
mais frio e aumentar a temperatura de um corpo mais quente.
Para entender melhor o significado dessa lei,
seja $T\in\mathcal O(\mathcal M)$ a temperatura do sistema
se seja $\gamma$ um processo, a diminuição da temperatura,
a diminuição da temperatura se dá quando a função
$\frac{d}{dt} T\circ\gamma(t)$ é estritamente decrescente.

Assim, apesar de que as equações acima descrevem o equilíbrio,
há processos onde a condição de integrabilidade não é satisfeita,
de fato 
dá 

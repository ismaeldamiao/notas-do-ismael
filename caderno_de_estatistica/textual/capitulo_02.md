# Mecânica estatística

- [Mecânica estatística](#mecânica-estatística)
  - [Revisão das principais teorias físicas](#revisão-das-principais-teorias-físicas)
    - [Termodinâmica](#termodinâmica)
    - [Mecânica clássica](#mecânica-clássica)
    - [Mecânica quântica](#mecânica-quântica)
    - [Teorema de Liouville](#teorema-de-liouville)
  - [Teoria de ensemble](#teoria-de-ensemble)
    - [Ensemble micro-canônico](#ensemble-micro-canônico)
    - [Ensemble canônico](#ensemble-canônico)
  - [Introdução à física estatística](#introdução-à-física-estatística)
    - [Ferramentas computacionais](#ferramentas-computacionais)

## Revisão das principais teorias físicas

### Termodinâmica

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

### Mecânica clássica

A mecânica clássica é fundamentada na geometria euclidiana,
na invariância de Galileu e nas leis de Newton.
Um olhar cuidadoso às expressões locais de sistemas de muitas partículas
permite generalizar as mesmas equações de movimento de Newton
para as muitas partículas, já levando em conta os vínculos entre
essas partículas.
Dessa maneira, para forças dependentes somente
da posição no espaço e das velocidades das partículas,
pode-se inferir que
o espaço de fase de um sistema com $N$ partículas
possui uma estrutura simplética $(\mathcal P, \omega)$
de dimensão $2N$ e a evolução
$\Phi:\mathbb R_t\rightarrow\mathcal P$
desse sistema obedece à lei de evolução
$$
   \frac{d}{dt}\Phi(t) = \vec X(\Phi(t)),
$$
para algum campo vetorial $\vec X$ definido em $\mathcal P$,
esse campo vetorial será dito hamiltoniano se existir
alguma função
$\mathcal H:\mathcal P\rightarrow\mathbb R$
tal que $\vec X\lrcorner\omega = d\mathcal H$,
diz-se que $\vec X$ é o gradiente simplético de $\mathcal H$.

Utilizando o teorema de Darboux, pode-se descrever a vizinhança
de qualquer estado inicial do sistema utilizando
uma família de coordenadas locais
$\{q^i, p_i\}_{i = 1}^N$ tais que as equações de evolução para campos
vetoriais hamiltonianos são
as usuais equações de Hamilton
$$
   \frac{d}{dt} q^i\circ\Phi(t) =
      \left.\frac{\partial}{\partial p_i} \mathcal H\right\vert_{\Phi(t)},
   \quad
   \frac{d}{dt} p_i\circ\Phi(t) =
   -\left.\frac{\partial}{\partial q_i} \mathcal H\right\vert_{\Phi(t)}.
$$

### Mecânica quântica

### Teorema de Liouville

$$
   \frac{d}{dt} \int_{R_t}\omega^N =
   \int_{R_t} \mathcal L_{X_{\mathcal H}} \omega^N = 0.
$$

$$
   \{\rho, \mathcal H\} = 0.
$$

## Teoria de ensemble

### Ensemble micro-canônico

### Ensemble canônico

## Introdução à física estatística

### Ferramentas computacionais
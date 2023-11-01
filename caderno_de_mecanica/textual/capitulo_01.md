# A geometria do espaço-tempo

## Geometria espacial

### O espaço Euclidiano

### Geometria afim

### O espaço Riemanniano

A construção formal do espaço, sem ter em conta a Relatividade Geral,
é feita utilizando os seguintes postulados:

1. Dimensão:
   Para todo ponto do espaço $\mathcal V_3$,
   existe um conjunto de pontos que o contém e que é bijetivo a algum aberto do $\mathbb R^3$.

   * Topologia:
     São chamados de vizinhança de um ponto do espaço todo subconjunto que o contém e que é
     bijetivo a um aberto $\mathbb R^3$ e também o próprio espaço.
1. Hausdorff: É possível encontrar vizinhanças disjuntas para pontos distintos no espaço $\mathcal V_3$.
1. Suavidade: É possível encontrar cartas de transição suaves na vizinhança de qualquer ponto do espaço $\mathcal V_3$.
1. Riemann:
   Existe um tensor métrico $\eta$ definido no espaço $\mathcal V_3$ tal que a distância
   $d(x, y)$ entre pontos $x$ e $y$ do espaço é igual a $\mathrm v |t_f - t_0|$, onde
   onde $\mathrm v$ é o módulo (com respeito a essa métrica)
   da velocidade de um corpo em movimento geodésico (com respeito a essa métrica)
   que viaja do ponto $x$ no instante $t_0$ ao ponto $y$ no instante $t_f$.

Dos primeiros dois postulados concluí-se que $\mathcal V_3$ é uma variedade tridimensional,
onde sua topologia é localmente induzida pela topologia do $\mathbb R^3$.
já do terceiro postulado concluí-se que essa variedade é suave e, finalmente,
o quarto postulado impõe uma rigidez ao espaço compatível com qualquer medida da distância,
de maneira que essa variedade é riemanniana.

Procurei enunciar esses postulados de maneira que cada afirmação relevante possa ser
testada experimentalmente.



## Espaço-tempo

### Espaço-tempo Aristotélico

### Espaço-tempo Galileano

### Espaço-tempo Lorenziano

## Lá

### Coordenada temporal

Seja $\mathcal V_4$ o espaço-tempo.
A coordenada temporal é a projeção $t:\mathcal V_4\rightarrow\mathbb T$
que associa a cada evento o instante em que ele ocorre.
Essa função define um campo vetorial $\hat e_t$ e a forma diferencial $dt$,
como é usual.

Diz-se em um vetor $\vec v\in T\mathcal V_4$ é um vetor no espaço se $dt(\vec v) = 0$,
isto é, quando não tem componentes na direção do tempo.
Contudo, um campo vetorial no espaço pode depender do tempo,
ainda que não tenha componentes na direção do tempo.
Para fins mmemônicos os vetores no espaço serão denotados com uma seta encima,
enquanto que os vetores no espaço-tempo serão denotados por letras maiúsculas,
sem seta.

### Tensor métrico

### Forma de volume

$$
\mathrm{vol} = \hat e_t \lrcorner \mathrm{vol}_{\eta}
$$

### Divergente

$$
\vec\nabla\cdot\vec v ~ \mathrm{vol} = \mathcal L_{\vec v} \mathrm{vol}
$$

A 2-forma diferencial $\vec v\lrcorner\mathrm{vol}$...

É possivel ainda verificar o teorema da digergência:
$$
\int_{\partial\Omega_t} \vec v\lrcorner\mathrm{vol} = \int_{\Omega_t} \vec\nabla\cdot\vec v ~ \mathrm{vol}
$$
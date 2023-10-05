# Modelos estatísticos

- [Modelos estatísticos](#modelos-estatísticos)
  - [O gás ideal](#o-gás-ideal)
    - [O gás ideal clássico](#o-gás-ideal-clássico)
    - [O gás ideal de bosões](#o-gás-ideal-de-bosões)
    - [O gás ideal fermiões](#o-gás-ideal-fermiões)
  - [Sólidos a baixas temperaturas](#sólidos-a-baixas-temperaturas)
    - [Cadeia de OHS 1D](#cadeia-de-ohs-1d)

## O gás ideal

As variáveis termodinâmicas que descrevem o
gás ideal são o volume $V$ do recipiente que o contém,
a pressão $P$ que o gás exerce sobre as paredes do recipiente,
a temperatura $T$ do gás e
a quantidade $n$ de mols de gás além de sua energia
interna $U$.
Os distintos tipos de gases são distinguidos
pelo calor específico por mol a volume constante, $c_V$.

As equações d'estado fundamentais são
a lei dos gases ideais e a a lei de Joule,
dadas respectivamente por
$$
\begin{aligned}
P V = n R T \\
U = c_V n R T
\end{aligned}
$$

O número de Avogadro $N_A$ é a quantidade de moléculas de
hidrogênio que há em um gás de hidrogênio com massa $1\mathtt g$,
por definição $1 \mathtt{mol}$ de hidrogênio,
de maneira que a quantidade $N$ de moléculas
de um gás é $N = N_A n$.
Assim a constante de Boltzmann é definida como
$k_B = R N_A^{-1}$ e as equações d'estado do gás ideal
ficam
$$
\begin{aligned}
P V = N k_B T \\
U = c_V N k_B T.
\end{aligned}
$$

O grande objetivo dos exercícios envolvendo o gás ideal
é encontrar um modelo microscópico que reproduza essas equações.

### O gás ideal clássico

O hamiltoniano do gás é dado por
$$
\mathcal H = \sum_{n=1}^N \frac{1}{2 m_n} p_n^2,
$$
onde $m_n$ é a massa da n-ésima molécula.

$$
\omega =
\sum_{n=1}^N \sum_{i=1}^3 dq^{n,i}\wedge dp_{n,i}
$$

$$
\begin{aligned}
Z(\beta) &= \int_{\mathcal P} \frac{1}{\sigma_0}
   \operatorname{exp}(-\beta \mathcal H) \omega^{3N} \\
   &= \frac{1}{\sigma_0} V^N \prod_{n=1}^N
   \left(\frac{2 m_n \pi}{\beta}\right)^{3/2}
\end{aligned}
$$

$$
\begin{aligned}
U &= k_B T^2 \frac{\partial}{\partial T}
   \operatorname{ln}\circ Z\left(\frac{1}{k_B T}\right) \\
   &= k_B T^2 \frac{\partial}{\partial T}
   \left(-\sigma_0 + N V + \frac{3}{2}\sum_{n=1}^N
   \operatorname{ln}(2 m_n \pi k_B) +\operatorname{ln}(T)\right) \\
   &= \frac{3}{2} N k_B T
\end{aligned}
$$

### O gás ideal de bosões

### O gás ideal fermiões

## Sólidos a baixas temperaturas

### Cadeia de OHS 1D
# Notas do Ismael

Repositório de anotações escritas por I. F. F. dos Santos.  
Documentos em LaTeX.

## Estrutura do repositório

Cada documento está estruturado em um diretório com os seguinte conteúdos:

```
<documento>
|-- LICENSE                # Cópia da licensa
|-- Make.sh                # Script para compilar
|-- bin
|   `-- main.pdf           # Versão compilada do documento
`-- src
    |-- main.tex           # Arquivo com o documento
    |-- postextual         # Inputs para elementos postextuais
    |-- pretextual         # Inputs para elementos pretextuais
    |-- referencias.bib    # Arquivo BibTeX com as referencias
    |-- settings           # Inputs para configurar pacotes
    `-- textual            # Inputs para elementos textuais
```

## Compilando

Cada documento possui um *script* `Make.sh` na raíz de seu respectivo diretório.
Para compilar o documento basta executar esse *script*.

> [!NOTE]
> Você precisará do comando `latexmk` e uma distribuição LaTeX instalada.

```sh
sh Make.sh
```

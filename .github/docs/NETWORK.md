# O que é CIDR?

É um método de alocação de endereços IP que melhora a eficiência do encaminhamento de dados na Internet. Cada máquina, servidor e dispositivo de usuário final que se conecta à Internet tem um número exclusivo, chamado endereço IP, associado a ele. Os dispositivos encontram e se comunicam uns com os outros usando esses endereços IP. As organizações usam o CIDR para alocar endereços IP de forma flexível e eficiente em suas redes.

# Quais são os diferentes formatos de endereço IP?

Um endereço IP tem duas partes:

- O endereço da rede é uma série de dígitos numéricos que apontam para o identificador exclusivo da rede 
- O endereço do host é uma série de números que indicam o identificador do host ou do dispositivo individual na rede

Até o início da década de 1990, os endereços IP eram alocados usando o sistema de endereçamento clássico. O comprimento total do endereço foi fixado e o número de bits alocados para as partes da rede e do host também foram fixados.


## Endereços clássicos

Um endereço IPv4 consiste em 32 bits (um bit se trata de um termo usado na informática e computação para designar a menor unidade de informação que se pode armazenar ou transmitir). Cada sequência de números separados pelo ponto consiste em 8 bits, representados por 0 a 255 em formas numéricas. As organizações poderiam comprar três classes de endereços IPv4. 

**Classe A**

Um endereço IPv4 de classe A tem 8 bits de prefixo de rede. Por exemplo, considere 44.0.0.1, em que 44 é o endereço da rede e 0.0.1 é o endereço do host.

**Classe B**

Um endereço IPv4 de classe B tem 16 bits de prefixo de rede. Por exemplo, considere 128.16.0.2, em que 128.16 é o endereço da rede e 0.2 é o endereço do host.

**Classe C**

Um endereço IPv4 de classe C tem 24 bits de prefixo de rede. Por exemplo, considere 192.168.1.100, em que 192.168.1 é o endereço da rede e 100 é o endereço do host. 

## Endereços sem classes

Os endereços do Encaminhamento Entre Domínios sem Classificação (CIDR) usam a máscara de sub-rede de comprimento variável (VLSM) para alterar a proporção entre os bits de endereço da rede e do host em um endereço IP. Uma máscara de sub-rede é um conjunto de identificadores que retorna o valor do endereço de rede no endereço IP, transformando o endereço do host em zeros. 

Uma sequência de VLSM permite que os administradores de rede dividam um espaço de endereço IP em sub-redes de vários tamanhos. Cada sub-rede pode ter uma contagem flexível de hosts e um número limitado de endereços IP. Um endereço IP CIDR acrescenta um valor de sufixo informando o número de bits do prefixo do endereço de rede a um endereço IP normal.

Por exemplo, 192.0.2.0/24 é um endereço CIDR IPv4 em que os primeiros 24 bits, ou 192.0.2, são o endereço da rede. 

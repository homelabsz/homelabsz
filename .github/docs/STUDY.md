# Network

## CIDR

CIDR (Classless Inter-Domain Routing) é um sistema de notação usado para representar e definir os intervalos de endereços IP em uma rede.

Basicamente, um CIDR é uma maneira de especificar um conjunto de endereços IP, indicando o endereço base (por exemplo, 192.168.0.0) e a quantidade de bits usados para identificar os dispositivos nessa rede. Por exemplo, se você tem um CIDR de "192.168.0.0/24", isso significa que os primeiros 24 bits do endereço IP são usados para identificar a rede, e os últimos 8 bits são usados para identificar dispositivos individuais dentro dessa rede.

## Endereços clássicos

Um endereço IPv4 consiste em 32 bits (um bit se trata de um termo usado na informática e computação para designar a menor unidade de informação que se pode armazenar ou transmitir). Cada sequência de números separados pelo ponto consiste em 8 bits, representados por 0 a 255 em formas numéricas. As organizações poderiam comprar três classes de endereços IPv4.

**Classe A**

Um endereço IPv4 de classe A tem 8 bits de prefixo de rede. Por exemplo, considere 44.0.0.1, em que 44 é o endereço da rede e 0.0.1 é o endereço do host.

**Classe B**

Um endereço IPv4 de classe B tem 16 bits de prefixo de rede. Por exemplo, considere 128.16.0.2, em que 128.16 é o endereço da rede e 0.2 é o endereço do host.

**Classe C**

Um endereço IPv4 de classe C tem 24 bits de prefixo de rede. Por exemplo, considere 192.168.1.100, em que 192.168.1 é o endereço da rede e 100 é o endereço do host.

# AWS VPC 

A AWS VPC (Amazon Virtual Private Cloud) é como você cria sua própria rede privada na nuvem da Amazon. É como se você estivesse construindo uma rede de computadores só para você na internet.

Isso permite que você coloque seus servidores, bancos de dados e outros recursos na nuvem, mas com controle total sobre como eles se conectam e como são protegidos. Você pode configurar as regras de segurança, dividir sua rede em partes separadas e até mesmo conectar sua VPC à sua rede local, se necessário.

Em resumo, a AWS VPC é a maneira de criar sua própria rede privada na nuvem da Amazon para executar seus aplicativos e serviços de forma segura e personalizada.

## AWS VPC Flow Log

O AWS VPC Flow Logs é um serviço que permite que você registre informações detalhadas sobre o tráfego de rede que ocorre na sua Amazon Virtual Private Cloud (VPC).

Basicamente, o VPC Flow Logs ajuda você a monitorar e registrar o tráfego de rede, incluindo informações como o endereço IP de origem e destino, portas utilizadas, protocolos e outras informações relevantes. Isso é útil para fins de segurança, solução de problemas e conformidade.

Por exemplo, com o VPC Flow Logs, você pode rastrear tentativas de acesso não autorizado, diagnosticar problemas de conectividade, entender os padrões de tráfego na sua rede e atender a requisitos de auditoria.

## AWS VPC Subnets

As sub-redes são partes menores de uma rede maior que você cria em sua conta AWS. É como dividir uma grande área em pedaços menores.

Cada sub-rede possui um grupo de endereços IP que pertencem a ela e pode estar localizada em diferentes regiões geográficas ou zonas de disponibilidade da AWS. Isso é útil porque você pode configurar diferentes partes da sua rede para fins específicos ou níveis de segurança.

Por exemplo, você pode ter uma sub-rede para seus servidores web, outra para seus bancos de dados e outra para armazenamento. Isso permite que você controle como o tráfego flui entre essas partes da sua rede e ajuda a manter seus aplicativos seguros e bem organizados.

## AWS Internet Gateway

Um AWS Internet Gateway é um componente de rede que permite que recursos dentro de uma VPC se comuniquem com a internet e vice-versa.

Imagine sua VPC como uma rede privada virtual na nuvem da AWS, onde você executa seus aplicativos e serviços. No entanto, por padrão, essa VPC é isolada da Internet para garantir a segurança dos recursos nela. É aí que entra o Internet Gateway.

O Internet Gateway atua como uma porta de entrada que permite o tráfego de entrada e saída da sua VPC para a Internet. Quando você deseja que um servidor, aplicativo ou recurso dentro da sua VPC seja acessível publicamente (por exemplo, um servidor web), você configura o Internet Gateway para rotear o tráfego entre sua VPC e a Internet.

## AWS Nat Gateway

Um AWS NAT Gateway é um serviço da Amazon que permite que recursos em uma rede privada, como uma Amazon Virtual Private Cloud (VPC), acessem a Internet de forma segura.

A principal função do NAT Gateway é permitir que as instâncias dentro de uma VPC que não possuem um endereço IP público se comuniquem com a Internet para acessar atualizações, fazer download de pacotes de software ou realizar outras tarefas online. O NAT Gateway age como um intermediário entre os recursos na VPC e a Internet, traduzindo os endereços IP privados dos recursos em endereços IP públicos da AWS.

# Serverless

## AWS API Gateway

O AWS API Gateway é um serviço que permite que você crie, gerencie e implante APIs (Application Programming Interfaces) de forma fácil e escalável.

Uma API é como um conjunto de regras que permite que diferentes aplicativos ou sistemas se comuniquem entre si. O AWS API Gateway atua como um "portão de entrada" para suas APIs, permitindo que você defina como as solicitações de entrada (por exemplo, solicitações de um aplicativo ou site) são processadas e como as respostas são retornadas.

# Instances

## Security Group

É um mecanismo de firewall virtual que controla o tráfego de entrada e saída para instâncias de computação, como servidores virtuais (por exemplo, Amazon EC2) em uma Amazon Virtual Private Cloud (VPC).

A função principal de um Security Group é definir as regras de tráfego que determinam quais tipos de comunicação são permitidos ou bloqueados para as instâncias associadas a ele. Você pode pensar em um Security Group como uma camada de proteção ao redor das suas instâncias na nuvem. Por exemplo, você pode configurar um Security Group para permitir o tráfego HTTP na porta 80 e o tráfego SSH na porta 22, enquanto bloqueia todo o tráfego não autorizado.

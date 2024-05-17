# Kubernetes CNI

## Overview

A conectividade é uma parte central do Kubernetes, mas pode ser desafiador entender exatamente como é o seu funcionamento esperado. Existem quatro problemas distintos em conectividade que devem ser tratados:

- Comunicações contêiner-para-contêiner altamente acopladas: Isso é resolvido por Pods e comunicações através do localhost.
- Comunicações pod-para-pod: Esse é o foco primário desse documento.
- Comunicações pod-para-serviço (service): Isso é tratado em Services.
- Comunicações Externas-para-serviços: Isso é tratado em Services.

Kubernetes é basicamente o compartilhamento de máquinas entre aplicações. Tradicionalmente, compartilhar máquinas requer a garantia de que duas aplicações não tentem utilizar as mesmas portas. Coordenar a alocação de portas entre múltiplos desenvolvedores é muito dificil de fazer em escala e expõe os usuários a problemas em nível do cluster e fora de seu controle.

A alocação dinâmica de portas traz uma série de complicações para o sistema - toda aplicação deve obter suas portas através de flags de configuração, os servidores de API devem saber como inserir números dinämicos de portas nos blocos de configuração, serviços precisam saber como buscar um ao outro, etc. Ao invés de lidar com isso, o Kubernetes faz de uma maneira diferente.

## O modelo de conectividade e rede do Kubernetes

Todo Pod obtém seu próprio endereço IP. Isso significa que vocë não precisa criar links explícitos entre os Pods e vocë quase nunca terá que lidar com o mapeamento de portas de contêineres para portas do host. Isso cria um modelo simples, retro-compatível onde os Pods podem ser tratados muito mais como VMs ou hosts físicos da perspectiva de alocação de portas, nomes, descobrimento de serviços (service discovery), balanceamento de carga, configuração de aplicações e migrações.

O Kubernetes impõe os seguintes requisitos fundamentais para qualquer implementação de rede (exceto qualquer política de segmentação intencional):

- Pods em um nó podem se comunicar com todos os pods em todos os nós sem usar NAT.
- Agentes em um nó (por exemplo o kubelet ou um serviço local) podem se comunicar com todos os Pods naquele nó.

Esse modelo não só é menos complexo, mas é principalmente compatível com o desejo do Kubernetes de permitir a portabilidade com baixo esforço de aplicações de VMs para contêineres. Se a sua aplicação executava anteriormente em uma VM, sua VM possuía um IP e podia se comunicar com outras VMs no seu projeto. Esse é o mesmo modelo básico.

Os endereços de IP no Kubernetes existem no escopo do Pod - contêineres em um Pod compartilham o mesmo network namespace - incluíndo seu endereço de IP e MAC. Isso significa que contêineres que compõem um Pod podem se comunicar entre eles através do endereço localhost e respectivas portas. Isso também significa que contêineres em um mesmo Pod devem coordenar a alocação e uso de portas, o que não difere do modelo de processos rodando dentro de uma mesma VM. Isso é chamado de modelo "IP-por-pod".

Como isso é implementado é um detalhe do agente de execução de contêiner em uso.

## Como implementar o modelo de conectividade do Kubernetes

Existe um número de formas de implementar esse modelo de conectividade. Esse documento não é um estudo exaustivo desses vários métodos, mas pode servir como uma introdução de várias tecnologias e serve como um ponto de início.

A conectividade no Kubernetes é fornecida através de plugins de CNIs

**Calico**

Calico é uma solução de conectividade e segurança para contêineres, máquinas virtuais e serviços nativos em hosts. O Calico suporta múltiplas camadas de conectividade/dados, como por exemplo: uma camada Linux eBPF nativa, uma camada de conectividade baseada em conceitos padrão do Linux e uma camada baseada no HNS do Windows. O calico provê uma camada completa de conectividade e rede, mas também pode ser usado em conjunto com CNIs de provedores de nuvem para permitir a criação de políticas de rede.

**Cilium**

Cilium é um software de código fonte aberto para prover conectividade e segurança entre contêineres de aplicação. O Cilium pode lidar com tráfego na camada de aplicação (ex. HTTP) e pode forçar políticas de rede nas camadas L3-L7 usando um modelo de segurança baseado em identidade e desacoplado do endereçamento de redes, podendo inclusive ser utilizado com outros plugins CNI.

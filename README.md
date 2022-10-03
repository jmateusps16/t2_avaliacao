# Teste Unitário em Flutter e CI/CD com GitHub Actions

<aside>
📌 Esta página foi elaborada como parte da avaliação do curso T2 - Ferramentas de Teste de Software ministrado pelo [Dr. Breno Miranda](https://www.cin.ufpe.br/~bafm/) do centro de informática da Universidade Federal de Pernambuco.

</aside>

**Aluno:** João Mateus Palmeira da Silva Ferreira

**Professor:** Dr. Breno Miranda

**Disciplina:** Ferramentas de Teste de Software

# 🗝 Requisitos

**Pré-requisito(s):** Possuir as dependências do Dart e Flutter instalados na máquina.
**Co-requisito(s):** Possuir conhecimento prévio na linguagem Dart e programação com Flutter
**Preparação Recomendada**: Cursos de testes de software, Dart e Flutter

# 📜 Introdução a Testes com Flutter

Diferentemente de outros *Frameworks* para desenvolvimento de software, o *Flutter* conta com uma vantagem de possuir nativamente a arquitetura de testes facilitando a vida do programador na construção de testes unitários. 

Os testes de unidade são úteis para verificar o comportamento de uma única função, método ou classe. O pacote `[test](https://pub.dev/packages/test)` fornece a estrutura principal para escrever testes de unidade e o `[flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html)` fornece utilitários adicionais para testar widgets.

Em Flutter para que a arquitetura de testes seja criado juntamente com a arquitetura de desenvolvimento é necessário que seja realizado a criação do projeto a partir do comando `flutter create nome_projeto` assim sera criado o projeto “padrão” flutter contendo toda a organização e estrutura necessária para iniciar o desenvolvimento.

## Escrevendo código e Testando no Terminal ou no VS Code

Para armazenamento dos testes recomenda-se a utilização do caminho padrão e importação dos códigos a serem testados em cada arquivo de teste

![Caminho padrão dos testes](Teste%20Unita%CC%81rio%20em%20Flutter%20e%20CI%20CD%20com%20GitHub%20Acti%204cdcb0d1adb64851a1ba70a65e017824/Untitled.png)

Caminho padrão dos testes

![Exemplo de importação de arquivo necessário para “rodar” o teste.](Teste%20Unita%CC%81rio%20em%20Flutter%20e%20CI%20CD%20com%20GitHub%20Acti%204cdcb0d1adb64851a1ba70a65e017824/Untitled%201.png)

Exemplo de importação de arquivo necessário para “rodar” o teste.

Esta estrutura é pensada e possibilita o uso do TDD, porém deixa livre para o programador escolher se realiza a escrita do código principal com as classe, metodo ou função é depois realizar os testes unitários para obter os resultados em tela ou criar os testes antes de iniciar a escrita do código.

![Exemplo de teste com sucesso em um teste de Widget com Flutter](Teste%20Unita%CC%81rio%20em%20Flutter%20e%20CI%20CD%20com%20GitHub%20Acti%204cdcb0d1adb64851a1ba70a65e017824/Untitled%202.png)

Exemplo de teste com sucesso em um teste de Widget com Flutter

## Integrando Flutter Action no GitHub Actions

Segue o padrão sendo necessário a criação da pasta *.github* e subpasta *workflows* que será responsável por armazenar o código yml contendo as etapas a serem executadas no GitHub.

![Arquivos necessários para o GitHub Actions](Teste%20Unita%CC%81rio%20em%20Flutter%20e%20CI%20CD%20com%20GitHub%20Acti%204cdcb0d1adb64851a1ba70a65e017824/Untitled%203.png)

Arquivos necessários para o GitHub Actions

Para este projeto, busquei demonstrar o uso da integração contínua (CI - *continuous integration)* e entrega contínua (*continuous delivery).* 

No arquivo de CI está a responsabilidade de executar a análise e teste do código após alterações no código na *branch master* ou *develop* e após solicitações de *pull request.* Após finalização nos retornará um arquivo json com o resultado das ações de teste realizadas no processo.

![Exemplo de retorno JSON para execução do teste](Teste%20Unita%CC%81rio%20em%20Flutter%20e%20CI%20CD%20com%20GitHub%20Acti%204cdcb0d1adb64851a1ba70a65e017824/Untitled%204.png)

Exemplo de retorno JSON para execução do teste

No arquivo de CD está a resonsabilidade de executar a análise e teste do código e geração de uma build do APP (android e IOS) após a criação de uma nova *release/tag* que só ocorre apos os requisitos forem atendidos, incluindo cobertura de teste.

# 🧠 Arquivos

[Repositório do projeto disponível no GitHub](https://github.com/jmateusps16/t2_avaliacao) - Poderá ser clonado ou forkado sem a necessidade de criação de um novo projeto.

[Código disponível no Gists](https://gist.github.com/jmateusps16/68bfd7b5dfa6d0e1ca4c231a098734b9) - Os arquivos principais poderá utilizar como base em um novo projeto

[Código disponível no Google Drive (ZIP)](https://drive.google.com/file/d/1_6_shNOOs1O2z1CvLx--lqHUU_3ZLfjp/view?usp=sharing) - Necessário realizar a criação do projeto e copiar o código manualmente.

[Vídeo de demonstração no Youtube](https://youtu.be/VNdSuEr0UAM).

# 📚 Referências

[Uma introdução aos testes unitários com flutter](https://www.notion.so/Uma-introdu-o-aos-testes-unit-rios-3495485f32eb4a4b9376a4008b0373d4)**.** Acessado em: 01/10/2022.

**[Github Actions - Flutter Action](https://github.com/marketplace/actions/flutter-action)**. Acessado em: 01/10/2022.
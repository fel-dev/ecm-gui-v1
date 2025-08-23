# 🎯 Project Specifications

<span style="color:red">Pré-requisitos: <a href="01-Documentação de Contexto.md"> Documentação de Contexto</a></span>

Many Windows users experience slow system performance due to the accumulation of temporary and unnecessary files. Existing cleaning tools are often complex, require internet access, or pose risks by modifying sensitive system areas. Non-technical users, in particular, lack safe and intuitive options to maintain their machines.

**EasyCleanMate GUI** addresses this gap by offering a lightweight, offline desktop application built with C++ and WinUI 3. It provides a clean and modern interface that guides users through the process of identifying and removing clutter from their systems — without requiring technical knowledge or risking system integrity. The solution focuses on simplicity, privacy, and efficiency, empowering users to optimize their computers with confidence. 

## Usuários
| Tipo de Usuário   | Descrição | Responsabilidades |
|------------------|-----------|------------------|
| **xxx** | xxxxx | xxxxx |

### Exemplo

| Tipo de Usuário   | Descrição | Responsabilidades |
|------------------|-----------|------------------|
| **Administrador** | Gerencia a aplicação e os usuários. | Gerenciar usuários, configurar o sistema, acessar todos os relatórios. |
| **Funcionário** | Usa a aplicação para suas tarefas principais. | Criar e editar registros, visualizar relatórios. |


~~## Arquitetura e Tecnologias~~

~~Descreva brevemente a arquitetura definida para o projeto e as tecnologias a serem utilizadas. Sugere-se a criação de um diagrama de componentes da solução.~~

## 🛠️ System architecture and Technologies

The system will be developed in C++ using WinUI 3, targeting an offline desktop application for Windows 10/11 (64-bit). It will follow a layered architecture, separating concerns across the UI (XAML + C++/WinRT), application logic, and system access via Win32 API. The goal is to deliver a lightweight and secure tool for cleaning temporary files, without relying on external services. Optional local persistence will be implemented using JSON/XML files to store logs and user preferences. The project will adhere to software engineering best practices, ensuring maintainability and scalability.

The following diagram illustrates the layered architecture of the EasyCleanMate GUI system:

![Figure 1 – EasyCleanMate GUI Component Diagram (English Version](./img/02%20-%20Figure%201%20–%20EasyCleanMate%20GUI%20Component%20Diagram%20(English%20Version).png)
*Figure 1 – EasyCleanMate GUI Component Diagram (English Version)*



## 🧩 Project Model Canvas

~~Deve ser desenvolvido a partir do microfundamento: Empreendedorismo e inovação.
Colocar a imagem do modelo construído apresentando a proposta de solução.~~


Block |	Description
:--|:--
Justification |	Many users struggle with accumulated temporary files that slow down their PCs. EasyCleanMate offers a lightweight, offline solution for cleaning and optimizing system performance.
Objectives |	Develop a secure and efficient desktop application to clean temporary files, improve system performance, and allow user customization.
Deliverables |	- EasyCleanMate GUI executable<br>- Local log and preference files<br>- Documentation and user guide
Stakeholders |	- End users (Windows 10/11)<br>- Development team<br>- Academic evaluators
Team |	Felipe (Lead Developer), [add other members if needed]
Resources |	- C++ with WinUI 3<br>- Win32 API<br>- JSON/XML for local storage<br>- GitHub for version control
Risks |	- Compatibility issues with older Windows builds<br>- Limited user permissions for file access<br>- UI responsiveness under heavy load
Timeline |	- Week 1–2: Requirements and architecture<br>- Week 3–4: Core development<br>- Week 5: Testing and documentation
Cost |	No financial cost; academic project using free tools and platforms
Scope |	Offline desktop application focused on cleaning temporary files and storing user preferences locally
Constraints |	- Must run on Windows 10/11 (64-bit)<br>- No external dependencies or internet access required
Assumptions |	- User has administrative privileges<br>- Target machines have sufficient disk space and memory
Success Criteria |	- Application runs smoothly on target OS<br>- Cleans files effectively<br>- User preferences persist locally

#![Project Model Canvas EasyCleanMate GUI](./img/Project%20Model%20Canvas%20EasyCleanMate%20GUI.png)
*Figure – Visual representation of the Project Model Canvas for EasyCleanMate GUI.*

## 3. Requisitos Funcionais

Os requisitos funcionais definem o comportamento esperado do sistema sob a perspectiva do usuário final.

ID    |	Descrição do Requisito	Prioridade
------|--------------------------------------
RF-001|	O sistema deve escanear diretórios padrão do Windows em busca de arquivos temporários.	| Alta
RF-002|	O sistema deve permitir ao usuário selecionar categorias de arquivos para limpeza.	    | Alta
RF-003|	O sistema deve exibir o espaço liberado após a limpeza.	                                | Média
RF-004|	O sistema deve registrar logs locais das operações realizadas.	                        | Baixa
RF-005|	O sistema deve solicitar confirmação antes de excluir arquivos.                         |	Alta

## 4. Requisitos Não Funcionais

Os requisitos não funcionais descrevem atributos de qualidade e restrições técnicas que impactam o desempenho e usabilidade da aplicação.

ID     |	Descrição do Requisito	Prioridade
-------|--------------------------------------
RNF-001|	A interface deve responder em menos de 3 segundos para operações de até 5GB.	|Alta
RNF-002|	O sistema deve funcionar sem conexão com a internet.	|Alta
RNF-003|	O sistema deve utilizar menos de 150MB de memória RAM durante operação normal.	|Média
RNF-004|	O tempo de instalação não deve exceder 1 minuto em máquinas com SSD.	|Média
RNF-005|	O sistema deve seguir boas práticas de acessibilidade visual (contraste, fontes legíveis).	|Média

## 5. Restrições

As restrições delimitam o escopo técnico e operacional do projeto, garantindo aderência às premissas estabelecidas.

ID  |	Restrição
----|--------------------------------------
R-01|	O sistema será desenvolvido exclusivamente em C++ com WinUI 3, sem uso de frameworks externos.
R-02|	O sistema não poderá realizar modificações no registro do Windows.
R-03|	O sistema não terá integração com serviços em nuvem ou APIs externas.
R-04|	O sistema exigirá permissões administrativas apenas para operações que envolvam diretórios protegidos.

> - [Requisitos Funcionais
 (RF)](https://pt.wikipedia.org/wiki/Requisito_funcional):
 correspondem a uma funcionalidade que deve estar presente na
  plataforma (ex: cadastro de usuário).
> - [Requisitos Não Funcionais
  (RNF)](https://pt.wikipedia.org/wiki/Requisito_n%C3%A3o_funcional):
  correspondem a uma característica técnica, seja de usabilidade,
  desempenho, confiabilidade, segurança ou outro (ex: suporte a
  dispositivos iOS e Android).

*Lembre-se que cada requisito deve corresponder à uma e somente uma
característica alvo da sua solução. Além disso, certifique-se de que
todos os aspectos capturados nas Histórias de Usuário foram cobertos.*

> **Links Úteis**:
> - [O que são Requisitos Funcionais e Requisitos Não Funcionais?](https://codificar.com.br/requisitos-funcionais-nao-funcionais/)
> - [O que são requisitos funcionais e requisitos não funcionais?](https://analisederequisitos.com.br/requisitos-funcionais-e-requisitos-nao-funcionais-o-que-sao/)

## Diagrama de Caso de Uso

O diagrama de casos de uso é o próximo passo após a elicitação de requisitos, que utiliza um modelo gráfico e uma tabela com as descrições sucintas dos casos de uso e dos atores. Ele contempla a fronteira do sistema e o detalhamento dos requisitos funcionais com a indicação dos atores, casos de uso e seus relacionamentos.

Para mais informações, consulte o microfundamento Engenharia de Requisitos de Software

As referências abaixo irão auxiliá-lo na geração do artefato “Diagrama de Casos de Uso”.

> **Links Úteis**:
> - [Criando Casos de Uso](https://www.ibm.com/docs/pt-br/elm/6.0?topic=requirements-creating-use-cases)
> - [Como Criar Diagrama de Caso de Uso: Tutorial Passo a Passo](https://gitmind.com/pt/fazer-diagrama-de-caso-uso.html/)
> - [Lucidchart](https://www.lucidchart.com/)
> - [Astah](https://astah.net/)
> - [Diagrams](https://app.diagrams.net/)

## Projeto da Base de Dados

O projeto da base de dados corresponde à representação das entidades e relacionamentos identificadas no Modelo ER, no formato de tabelas, com colunas e chaves primárias/estrangeiras necessárias para representar corretamente as restrições de integridade.
 
Para mais informações, consulte o microfundamento "Modelagem de Dados".
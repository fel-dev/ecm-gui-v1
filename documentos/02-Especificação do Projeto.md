# 🎯 Project Specifications

<span style="color:red">Pré-requisitos: <a href="01-Documentação de Contexto.md"> Documentação de Contexto</a></span>

Many Windows users experience slow system performance due to the accumulation of temporary and unnecessary files. Existing cleaning tools are often complex, require internet access, or pose risks by modifying sensitive system areas. Non-technical users, in particular, lack safe and intuitive options to maintain their machines.

**EasyCleanMate GUI** addresses this gap by offering a lightweight, offline desktop application built with C++ and WinUI 3. It provides a clean and modern interface that guides users through the process of identifying and removing clutter from their systems — without requiring technical knowledge or risking system integrity. The solution focuses on simplicity, privacy, and efficiency, empowering users to optimize their computers with confidence. 

## 2 👤 Users

This section describes the user profiles who will interact with the system, their responsibilities, and specific needs.

User Type	|Description	|Responsibilities
--         |--           |--
Administrator	|User with full access to the system.	|Manage configurations, initiate full cleanups, view logs and reports.
Standard User	|Regular user who performs basic cleanups.	|Select file categories, start cleanup, view freed-up space.


## 3 🛠️ System architecture and Technologies

The system will be developed in C++ using WinUI 3, targeting an offline desktop application for Windows 10/11 (64-bit). It will follow a layered architecture, separating concerns across the UI (XAML + C++/WinRT), application logic, and system access via Win32 API. The goal is to deliver a lightweight and secure tool for cleaning temporary files, without relying on external services. Optional local persistence will be implemented using JSON/XML files to store logs and user preferences. The project will adhere to software engineering best practices, ensuring maintainability and scalability.

The following diagram illustrates the layered architecture of the EasyCleanMate GUI system:

![Figure 1 – EasyCleanMate GUI Component Diagram (English Version](./img/02%20-%20Figure%201%20–%20EasyCleanMate%20GUI%20Component%20Diagram%20(English%20Version).png)
*Figure 1 – EasyCleanMate GUI Component Diagram (English Version)*



## 4 🧩 Project Model Canvas

The Project Model Canvas provides a structured overview of the EasyCleanMate GUI project, capturing key elements such bellow:

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

## 5. Functional Requirements
Functional requirements define the expected behavior of the system from the end-user's perspective.

ID	|Requirement Description	|Priority
--|--|--
FR-001|	The system must scan standard Windows directories for temporary files.	|High
FR-002|	The system must allow users to select file categories for cleanup.	|High
FR-003|	The system must display the amount of space freed after cleanup.	|Medium
FR-004|	The system must log operations locally.	|Low
FR-005|	The system must request confirmation before deleting files.	|High

## 6. Non-Functional Requirements
Non-functional requirements describe quality attributes and technical constraints that affect performance and usability.

ID	|Requirement Description	|Priority
--  |--                   |--
NFR-001	|The interface must respond in under 3 seconds for operations up to 5GB.|	High
NFR-002	|The system must operate without an internet connection.	|High
NFR-003	|The system must use less than 150MB of RAM during normal operation. | Medium
NFR-004	|Installation time must not exceed 1 minute on SSD-equipped machines. | Medium
NFR-005	|The system must follow visual accessibility best practices (contrast, readable fonts).	| Medium

## 7. Constraints
Constraints define the technical and operational boundaries of the project, ensuring alignment with established assumptions.

ID	|Constraint
--|--
C-01	|The system will be developed exclusively in C++ with WinUI 3, without external frameworks.
C-02	|The system must not modify the Windows registry.
C-03	|The system will not integrate with cloud services or external APIs.
C-04	|The system will require administrative permissions only for operations involving protected directories.

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
# Dashboard corporativo integrado com MySQL e Azure
 O intuito desse projeto junto à Dio e NTT Data foi a criação de uma instância na Azure para MySQL, criação do banco de dados com base no script fornecido, integrar o Power BI com o MySQL no Azure e por fim verificar problemas na base de dados a fim de realizar a transformação desses dados.
 
passo 1: configuração do Azure
passo 2: Popular servidor com script fornecido
passo 3: Integrar SQL com Power BI
passo 4: Realizado o passo Transformação do ETL

![image](https://github.com/user-attachments/assets/2dc11931-3acb-4150-bdb8-b12010bec98b)

![image](https://github.com/user-attachments/assets/faffb4e7-56fe-47e4-b39c-947b4e70b95d)]

Fluxo mostra como será o passo a passo para o projeto, além de que será necessário desenhar um relatório do passo a passo do processo.


#### O QUE FAZER?

Primeiramente todos trabalho será realizado em uma base de dados de teste. Em seguida será criado um relatório para verificar as informações.
* Criar instancia na Azure MySQL
* Criar banco de dados com dados disponiveis no git Hub
* Integrar PowerBi com MySQL
* Verificar problemas na Transformação

#### TRANSFORMAR DADOS

* Verificar cabeçalhos e tipos de dados
* Modificar valores monetários para tipos double
* Verificar valores Nulos e análise para remoção
* Os Employer com nulos em Super_snn podem ser gerentes verficiar se existe algum colaborador sem gerentes
* verificar se existe departamentos sem gerentes
* se houver departamento sem gerente, suponha que tenho dados e preencher lacunas
* verificar se existe numero de horas de projetos
* separar colunas complexas

* mesclar consultas employee e departamento para criar uma tabela employee com nome dos departamentos associados aos colaboradores. A mescla terá como base a tabela employee.
* OBS: Fique atento, essa informação influencia no tipo de junção.
* Neste processo elimine as colunas desnecessárias

* Realizar a junção dos colaborador e respectivos nomes dos gerentes isso pode ser feito com consulta SQL ou pela mescla de tabelas com POWER BI caso utilize SQL, especifique no README a query utilizada no processo.
* Mesclar as colunas de nome e sobrenome para ter apenas uma coluna definindo os nomes dos colaboradores.


##### 1. Criando conta no AZURE

![image](https://github.com/user-attachments/assets/19b12786-b304-4ccf-973c-d8ff8d5a44d5)
![image](https://github.com/user-attachments/assets/01f879e9-c57b-48e3-9e21-756ba9740c94)


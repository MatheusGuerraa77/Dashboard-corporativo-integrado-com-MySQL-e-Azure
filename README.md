# Dashboard corporativo integrado com MySQL e Azure
 O intuito desse projeto junto à Dio e NTT Data foi a criação de uma instância na Azure para MySQL, criação do banco de dados com base no script fornecido, integrar o Power BI com o MySQL no Azure e por fim verificar problemas na base de dados a fim de realizar a transformação desses dados.
 
- passo 1: configuração do Azure
- passo 2: Popular servidor com script fornecido
- passo 3: Integrar SQL com Power BI
- passo 4: Realizado o passo Transformação do ETL

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

##### 2. Conectando MySQL na Azure
![image](https://github.com/user-attachments/assets/ee8470a5-dce0-42e3-b8bb-b02cb18a580e)
![image](https://github.com/user-attachments/assets/a52fa0dd-6dd6-4277-8b24-2aa8a3620f8b)
##### 3. Integrando Power BI com MySQL na Azure
![image](https://github.com/user-attachments/assets/d9d34443-b6e0-4d00-88b1-6841609b4576)

##### 4. Transformação dos dados:
-modificação dos valores monetários para o tipo double preciso
![image](https://github.com/user-attachments/assets/064b7c4a-45cb-4a22-a9eb-7dae161fadc7)
- Há um colaborador sem ser gerente:
![image](https://github.com/user-attachments/assets/79cf693d-0765-4224-891c-ac7c6251a5df)
![image](https://github.com/user-attachments/assets/b4abd6aa-00b2-4fc3-84b4-28274d5fe31e)

-Todos departamentos tem gerentes:
![image](https://github.com/user-attachments/assets/f41161d0-0012-4641-b847-e169e649c0ac)
-número de horas do projeto:
![image](https://github.com/user-attachments/assets/94a13ad6-d3f0-48cb-a63a-dd33400c682b)
- separar colunas complexas
-Colunas complexas como endereço foram separadas:
![image](https://github.com/user-attachments/assets/52069f6c-d9ee-4c1e-acf5-32f66a8f237a)

-mescla colaboraddores e nome dos gerentes:
![image](https://github.com/user-attachments/assets/7c700c84-3cd2-4461-96ea-677b8a711953)
-mescla nome e sobrenome:
![image](https://github.com/user-attachments/assets/f096f5be-37cd-42c8-bc47-d49eaf914f32)
-mescla nome de departamento e localização:
![image](https://github.com/user-attachments/assets/e14e1aa8-3a30-427b-9a6a-c9ce07b95e3d)
-exibição do modelo:
![image](https://github.com/user-attachments/assets/d8aa6697-3e3a-4268-8968-c2468e701440)
##### 5. Explicação:
![image](https://github.com/user-attachments/assets/2dd466b7-0e68-4c42-973c-196198a5f791)
- Neste caso, onde você tem dados de "Gerente" e "Colaborador" ou "Store" e "December", utilizar o recurso mesclar é mais apropriado do que atribuir. O motivo é que, ao mesclar consultas no Power BI, você está combinando dados de diferentes tabelas com base em uma chave ou coluna comum, mantendo a relação entre elas. Isso possibilita a criação de novas colunas combinando dados de várias tabelas.

- Já o ato de atribuir seria mais usado para modificar ou renomear colunas e valores dentro de uma única tabela, não agregando informações de múltiplas fontes. Como o objetivo aqui parece ser unir e agregar dados de diferentes conjuntos, a mesclagem é a abordagem correta, preservando as referências cruzadas entre as tabelas.









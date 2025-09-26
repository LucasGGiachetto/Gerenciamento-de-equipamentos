# TECHMAN

Aplicação web completa com back-end desenvolvido em **Node.js/Express** e front-end em **React**.

## 🧰 Tecnologias Utilizadas

### Back-end
- **Node.js** – Ambiente de execução para JavaScript
- **Express** – Framework para construção de APIs
- **Prisma** – ORM para interação com banco de dados
- **MySQL** – Banco de dados relacional
- **JWT** – Sistema de autenticação baseado em tokens

### Front-end
- **React** – Biblioteca para criação de interfaces
- **TypeScript** – Extensão do JavaScript com tipagem
- **Axios** – Cliente HTTP para consumo de APIs

### Ferramentas
- **VS Code** – Editor de código
- **XAMPP** – Servidor local com MySQL
- **Git** – Sistema de controle de versão

---

## 🚀 Como Executar o Projeto

### Pré-requisitos
- **Node.js** (v16 ou superior)
- **XAMPP** com MySQL
- **Git**
- **VS Code**

---

## 🔧 Configuração do Back-end (`/api`)

1. Acesse a pasta do back-end:
```bash
cd api
```

2. Instale as dependências:
```bash
npm install
```

3. Configure as variáveis de ambiente:
- Crie um arquivo .env na pasta /api
- Adicione as seguintes variáveis:

```env
DATABASE_URL="mysql://usuario:senha@localhost:3306/techman"
JWT_SECRET="sua-chave-secreta-aqui"
```

4. Execute as migrações do banco de dados:
```bash
npx prisma migrate dev
```

5. (Opcional) Execute os dados iniciais:
```bash
npx prisma db seed
```

6. Inicie o servidor:
   ```bash
   npm run dev
   ```

## 🖥 Configuração do Front-end (/web)

1. Acesse a pasta do front-end:
   ```bash
   cd web
   ```

2. Instale as dependências:
   ```bash
   npm install
   ```

3. Configure as variáveis de ambiente:
- Crie um arquivo .env na pasta /web
- Adicione:
  ```bash
  REACT_APP_API_URL=http://localhost:3001
  ```

4. Inicie o servidor:
   ```bash
   npm start
   ```

## 🗃 Banco de Dados
Certifique-se de que o MySQL esteja rodando via XAMPP. O Prisma irá criar automaticamente as tabelas necessárias com base no schema.

## 🛠 Comandos Úteis
### Back-end
- npm run dev – Inicia o servidor em modo de desenvolvimento
- npx prisma studio – Abre interface visual do banco
- npx prisma generate – Gera o cliente Prisma

### Front-end
- npm start – Inicia o servidor de desenvolvimento
- npm run build – Gera o build de produção
- npm test – Executa testes (se existirem)

## 🧩 Extensões Recomendadas no VS Code
- Prisma
- ES7+ React/Redux/React-Native snippets
- Auto Rename Tag
Bracket Pair Colorizer

## Soluções Comuns
## Erro de conexão com o MySQL
- Confirme se o XAMPP está rodando
- Verifique as credenciais no .env
- Certifique-se de que a porta 3306 está disponível

## Erro de porta em uso
- Mude a porta no arquivo de configuração
- Ou encerre processos Node.js com:
  ```bash
  killall node
  ```

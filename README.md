# 📱 Lembrei!

Aplicativo mobile de lembretes desenvolvido com Flutter, com foco em notificações locais e boas práticas de organização de código.

---

## 🧠 Sobre o projeto

O **Lembrei!** é um app simples e funcional que permite ao usuário criar e gerenciar lembretes do dia a dia, com suporte a notificações locais para garantir que nenhuma tarefa importante seja esquecida.

Este projeto foi desenvolvido com o objetivo de praticar e demonstrar:

* Desenvolvimento mobile com Flutter
* Estruturação de aplicações
* Gerenciamento de estado (em definição)
* Implementação de notificações locais
* Boas práticas de código para portfólio

---

## ✨ Funcionalidades

### ✅ MVP (versão inicial)

* Criar lembretes
* Editar lembretes
* Excluir lembretes
* Listar lembretes
* Marcar como concluído/pendente
* Agendar notificações locais

---

### 🚀 Futuras melhorias

* Persistência de dados (SQLite, Hive ou similar)
* Filtros (todos, concluídos, pendentes)
* Categorias de lembretes
* Repetição de tarefas (diário, semanal, etc)
* Sincronização com nuvem
* Autenticação de usuário

---

## 📱 Telas do app

### 🏠 Home

* Lista de lembretes
* Status (concluído/pendente)
* Botão de adicionar

### ➕ Criar/Editar Lembrete

* Título
* Descrição
* Data
* Hora
* Botão de salvar

---

## 🛠️ Tecnologias utilizadas

* Flutter
* Dart
* Material Design
* Notificações locais (plugin a definir)

---

## 🧱 Arquitetura (em evolução)

O projeto segue uma estrutura organizada para facilitar manutenção e escalabilidade:

```
lib/
├── models/
├── screens/
├── widgets/
├── services/
├── controllers/
└── main.dart
```

> ⚠️ O gerenciamento de estado ainda está em definição (Provider, Riverpod ou outro).

---

## 🔔 Notificações

O app utiliza notificações locais para alertar o usuário sobre seus lembretes no horário definido.

Esse é um dos principais focos do projeto, explorando:

* Agendamento de notificações
* Execução em background
* Experiência do usuário com lembretes

---

## ▶️ Como rodar o projeto

```bash
# Clone o repositório
git clone https://github.com/DaviMadruga/lembrei-flutter-dart.git

# Acesse a pasta
cd lembrei-flutter-dart

# Instale as dependências
flutter pub get

# Execute o app
flutter run
```

---

## 📌 Roadmap

* [x] Planejamento do app
* [x] Definição do MVP
* [ ] Criação das telas
* [ ] Implementação dos lembretes
* [ ] Integração com notificações
* [ ] Gerenciamento de estado
* [ ] Persistência de dados
* [ ] Publicação

---

## 🧠 Aprendizados

Este projeto está sendo utilizado para aprofundar conhecimentos em:

* Flutter na prática
* Organização de projetos reais
* Experiência do usuário (UX)
* Boas práticas de desenvolvimento mobile
* Construção de portfólio profissional

---

## 👨‍💻 Autor

Desenvolvido por **Davi Madruga Cavalcanti**

---

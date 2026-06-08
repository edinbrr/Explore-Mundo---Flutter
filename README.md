# 🌍 Explore Mundo - Aplicativo de Agência de Viagens em Flutter

## 📖 Sobre o Projeto

O **Explore Mundo** é um aplicativo desenvolvido em Flutter com o objetivo de simular uma plataforma de uma agência de viagens.

A aplicação permite visualizar destinos turísticos em destaque, consultar pacotes de viagem e conhecer informações institucionais da agência por meio de uma interface moderna e intuitiva.

Este projeto foi desenvolvido como atividade acadêmica da disciplina de Desenvolvimento Mobile utilizando Flutter.

---

## 🎯 Objetivos

O projeto tem como finalidade aplicar os conceitos fundamentais estudados durante a disciplina, incluindo:

* Material Design
* Layouts responsivos
* Organização visual com widgets
* Navegação e estruturação de interfaces
* Utilização de imagens locais (assets)
* Construção de componentes reutilizáveis

---

## 🛠 Tecnologias Utilizadas

* Flutter
* Dart
* Material Design 3

---

## 📂 Estrutura do Projeto

```text
explore_mundo/
│
├── assets/
│   ├── explore.jpg
│   ├── paris.jpg
│   ├── cancun.jpg
│   └── gramado.jpg
│
├── lib/
│   └── main.dart
│
├── pubspec.yaml
│
└── README.md
```

---

## ✨ Funcionalidades

### Banner Principal

Apresenta uma imagem de destaque com mensagem promocional incentivando o usuário a conhecer novos destinos.

### Campo de Pesquisa

Permite que o usuário visualize uma área destinada à pesquisa de destinos turísticos.

### Informações da Agência

Exibe o nome da agência e sua avaliação média.

### Ações Rápidas

* Destinos
* Pacotes
* Contato

### Destinos em Destaque

Exibição de destinos turísticos através de cartões contendo:

* Imagem
* Nome do destino
* Descrição
* Avaliação
* Botão de reserva

Destinos disponíveis:

* Paris
* Cancún
* Gramado

### Sobre Nós

Apresenta uma breve descrição institucional da agência.

---

## 🧩 Widgets Flutter Utilizados

### MaterialApp

Responsável pela configuração principal da aplicação.

### Scaffold

Estrutura básica da tela.

### AppBar

Barra superior com o título da aplicação.

### ListView

Permite rolagem vertical de todo o conteúdo.

### Stack

Utilizado para criar o banner principal com texto sobreposto à imagem.

### Row

Organização horizontal dos componentes.

### Column

Organização vertical dos componentes.

### Container

Personalização visual dos elementos.

### Card

Exibição dos destinos turísticos.

### Image.asset

Carregamento de imagens locais.

### TextField

Campo de pesquisa.

### ElevatedButton

Botão de reserva dos pacotes.

### Icon

Representação visual de ações e avaliações.

---

## 📸 Recursos Visuais

O projeto utiliza imagens armazenadas localmente:

* explore.jpg
* paris.jpg
* cancun.jpg
* gramado.jpg

As imagens são registradas no arquivo pubspec.yaml.

---

## ▶ Como Executar

### 1. Clonar o Repositório

```bash
git clone URL_DO_REPOSITORIO
```

### 2. Entrar na Pasta

```bash
cd explore_mundo
```

### 3. Instalar Dependências

```bash
flutter pub get
```

### 4. Executar Aplicação

#### Chrome

```bash
flutter run -d chrome
```

#### Windows

```bash
flutter run -d windows
```

#### Android

```bash
flutter run
```

---

## 🧪 Como Testar

Após iniciar a aplicação:

### Verificar Banner Principal

* Imagem exibida corretamente.
* Texto sobreposto visível.

### Verificar Campo de Pesquisa

* Campo renderizado corretamente.
* Ícone de pesquisa visível.

### Verificar Botões

* Destinos
* Pacotes
* Contato

Todos devem aparecer centralizados.

### Verificar Cards

Cada card deve conter:

* Imagem
* Nome
* Descrição
* Avaliação
* Botão "Reservar Agora"

### Verificar Seção Sobre Nós

O texto institucional deve aparecer ao final da página.

### Verificar Rolagem

Todo o conteúdo deve ser acessível através da rolagem vertical.

---

## 📚 Conceitos Aplicados

Durante o desenvolvimento foram aplicados os seguintes conceitos estudados na disciplina:

* Estruturação de aplicações Flutter
* Utilização de Widgets
* Layouts responsivos
* Organização de componentes visuais
* Manipulação de Assets
* Material Design
* Componentização de código

---

## 👨‍💻 Autor

Edson Victor Miranda de Oliveira

Projeto desenvolvido para fins acadêmicos na disciplina de Desenvolvimento Mobile com Flutter.

---

## 📄 Licença

Projeto desenvolvido exclusivamente para fins educacionais.

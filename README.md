<h1 align="center">Jokenpo Flutter</h1>
<p align="center">Aplicativo desenvolvido em Flutter para praticar os fundamentos do framework através do clássico jogo Pedra, Papel e Tesoura.</p>

---

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-stable-blue?logo=flutter" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-stable-blue?logo=dart" alt="Dart">
</p>

---

## Objetivo

Este projeto foi desenvolvido com o foco em:

- Exercitar conceitos básicos do Flutter (widgets, estado, assets e navegação simples).
- Praticar lógica de jogo com decisões condicionais.
- Criar uma interface simples e responsiva para interação por toque.

---

## Funcionalidades

- Escolha do jogador: **Pedra**, **Papel** ou **Tesoura** (toque nas imagens).
- Jogada do app gerada **aleatoriamente**.
- Cálculo e exibição do **resultado** da rodada (vitória, derrota ou empate).
- Troca dinâmica da imagem da jogada do app.
- Mensagens de feedback: "Parabéns, você ganhou :)", "Que pena, você perdeu :(" e "Empatamos ;)".

---

## Tecnologias Utilizadas

- [Flutter](https://docs.flutter.dev/): framework principal para desenvolvimento multiplataforma.
- [Dart](https://dart.dev/guides): linguagem de programação usada pelo Flutter.
- **Material Design**: componentes visuais nativos.
- **Assets locais (imagens)**: `images/padrao.png`, `images/pedra.png`, `images/papel.png`, `images/tesoura.png` (declarados no `pubspec.yaml`).
- **`dart:math` (`Random`)**: para sortear a jogada do app.
- **`GestureDetector`**: para capturar o toque nas opções.

---

## Demonstração

<p align="center">
  <img src="/images/readme/screenshot-inicial.png" alt="Tela inicial" width="320" />
</p>

<p align="center">
  <img src="images/readme/screenshot-vitoria.png" alt="Exemplo de vitória" width="320" />
  <img src="images/readme/screenshot-empate.png" alt="Exemplo de empate" width="320" />
  <img src="images/readme/screenshot-derrota.png" alt="Exemplo de derrota" width="320" />
</p>

---

## Instalação e Execução

Para rodar este projeto localmente, siga os passos:

```bash
# Clone o repositório
git clone https://github.com/jaquetrevizan/jokenpo_flutter.git

# Acesse o diretório do projeto
cd jokenpo_flutter

# Instale as dependências
flutter pub get

# Execute o app (Android, iOS, Web ou Desktop)
flutter run
```
---

## Dúvidas & Sugestões

- Se tiver alguma ideia para melhorar este projeto ou encontrar algum problema, fique à vontade para abrir uma issue aqui no repositório.
- Para dúvidas mais diretas, você também pode me escrever em: trevizan.jaqueline@gmail.com.




import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  var _imageApp = AssetImage("images/padrao.png");
  var _message = "Escolha uma opção abaixo";

  void _optionSelected(String chooseUser) {

    var options = ["pedra", "papel", "tesoura"];
    var number = Random().nextInt(3);
    var chooseApp = options[number];

    switch(chooseApp) {
      case "pedra":
        setState(() {
          this._imageApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imageApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imageApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    if (
      (chooseUser == "pedra" && chooseApp == "tesoura") ||
      (chooseUser == "tesoura" && chooseApp == "papel") ||
      (chooseUser == "papel" && chooseApp == "pedra")
    ) {
      setState(() {
        this._message = "Parabéns, Você ganhou :)";
      });
    } else if (
      (chooseApp == "pedra" && chooseUser == "tesoura") ||
      (chooseApp == "tesoura" && chooseUser == "papel") ||
      (chooseApp == "papel" && chooseUser == "pedra")
    ) {
      setState(() {
        this._message = "Que pena, Você perdeu :(";
      });
    } else {
      setState(() {
        this._message = "Empatamos ;)";
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Image(
            image: this._imageApp
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._message,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _optionSelected("pedra"),
                child: Image.asset("images/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _optionSelected("papel"),
                child: Image.asset("images/papel.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _optionSelected("tesoura"),
                child: Image.asset("images/tesoura.png", height: 100,),
              ),
            ],
          )
        ],
      ),
    );
  }
}

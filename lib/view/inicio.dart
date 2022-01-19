import 'package:flutter/material.dart';
import 'package:selecao_escribo/controller/funcao.dart';
import 'package:selecao_escribo/controller/verifica_inteiro.dart';
import 'package:selecao_escribo/custom_widget/caixatexto.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

var _controller = new TextEditingController();
bool _erro = false;
String _resultado = "";

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seleção - Técnico 1"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Esta função retorna todos os valores inteiros divisíveis por 3 e 5 e que sejam inferiores ao número digitado.\n\n-Ex.: Caso receba um valor 10, retorna 23, pois soma-se os números 3, 5, 6 e 9.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: CaixaTexto(_controller, "Insira um número inteiro", _erro,
                  Icon(Icons.edit)),
            ),
            _erro ==
                    true //Caso conste erro retorna uma mensagem visual para o usuário
                ? Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        "Este valor não é um número inteiro.",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  )
                : Container(), // Fim da mensagem de erro
            Container(
              //Formação visual do botão
              width: 120,
              child: ElevatedButton(
                  onPressed: () {
                    //Exclicações das funções estão nas mesmas.
                    if (VerificaInteiro().inteiro(_controller.text)) {
                      _resultado =
                          DevolveNumero().devolve(int.parse(_controller.text));
                      _erro = false;
                    } else {
                      _erro = true;
                    }
                    setState(() {});
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                      Text("Enviar"),
                    ],
                  )),
            ), //Fim botão
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resultado: ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      _resultado,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

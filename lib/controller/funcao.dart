class DevolveNumero {
  String devolve(int numero) {
    int _retorno = 0; //Número a ser somado caso o retorno da divisão seja 0.
    int _incrementar = 3; //O menor número que vai passar pela divisão.
    int _tres = 3; //Número fixo de divisão
    int _cinco = 5; //Número fixo de divisão
    if (numero >= 3) {
      //Caso o número solicitado não seja maior que três não passa para a divisão
      while (_incrementar < numero) {
        int _divisao = _incrementar;
        int result_tres = 0; //Variável para capturar retorno da divisão
        int result_cinco = 0; //Variável para capturar retorno da divisão
        result_tres =
            _divisao % _tres; //% operador para retornar resto da divisão.
        result_cinco = _divisao % _cinco;
        if (result_tres == 0) {
          _retorno +=
              _incrementar; //Incrementa na variável caso a divisão seja 0
          print("RESULTADO 3: " +
              _incrementar
                  .toString()); //Acompanha os resultados da divisão por 3
        }
        if (result_cinco == 0) {
          _retorno +=
              _incrementar; //Incrementa na variável caso a divisão seja 0
          print("RESULTADO 5: " +
              _incrementar
                  .toString()); //Acompanha os resultados da divisão por 5
        }
        _incrementar++; //Variavel que incrementa até que o valor seja igual ao número.
      }
    }
    return _retorno.toString();
  }
}

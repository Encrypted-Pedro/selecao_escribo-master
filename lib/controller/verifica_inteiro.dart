class VerificaInteiro {
  bool inteiro(var numero) {
    //Função para validar se o número é inteiro
    bool _inteiro = true;
    try {
      int n = int.parse(
          numero); //Tenta fazer a conversão para inteiro, caso negativo retorna a variavel _inteiro como falsa.
    } catch (e) {
      _inteiro = false;
    }
    return _inteiro;
  }
}

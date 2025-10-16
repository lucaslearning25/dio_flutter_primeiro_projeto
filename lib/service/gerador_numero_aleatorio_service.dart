import 'dart:math';

class GeradorNumeroAleatorioService {

  static int gerarNumeroAleatorio({int numeroMaximo = 1000}){
    Random numeroGerado = Random();
    return numeroGerado.nextInt(numeroMaximo);
  }

}
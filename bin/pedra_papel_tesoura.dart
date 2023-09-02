import 'package:pedra_papel_tesoura/pedra_papel_tesoura.dart'
    as pedra_papel_tesoura;
import 'dart:io';

void main() {
  stdout.writeln("Selecione pedra; papel; tesoura ");
  var opt = stdin.readLineSync();
  // stdout.write('Ola, $opt');
  var pc = ['pedra', 'papel', 'tesoura'];
  var jogada = pedra_papel_tesoura.getRamdomArray(pc);
  // print(jogada);

  if (opt == jogada) {
    print(jogada);
    print('Empate!');
  } else if ((opt == 'pedra' && jogada == 'tesoura') ||
      (opt == 'papel' && jogada == 'pedra') ||
      (opt == 'tesoura' && jogada == 'papel')) {
    print(jogada);
    print('Você ganhou!');
  } else {
    print(jogada);
    print('O computador ganhou!');
  }
}

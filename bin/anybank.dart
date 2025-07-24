import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);
  ContaCorrente contaChris = ContaCorrente("Chris", 4000);
  ContaPoupanca contaDenise = ContaPoupanca("Denise", 4000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }

  contaRoberta.receberDinheiro(3000);
  contaMatheus.receberDinheiro(500);
  contaMatheus.enviarDinheiro(200);

  contaChris.imprimeSaldo();
  contaChris.enviarDinheiro(4300);
  contaDenise.imprimeSaldo();
  contaDenise.enviarDinheiro(4300);
  contaDenise.calculaRendimento();
  contaDenise.imprimeSaldo();
}

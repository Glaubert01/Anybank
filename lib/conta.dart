class Conta {
  String titular;
  double _saldo;

  void enviarDinheiro(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    } else {
      print("Saldo insuficiente.");
    }
  }

  void receberDinheiro(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

  void imprimeSaldo() {
    print("O saldo atual de $titular e de R\$$_saldo");
  }

  Conta(this.titular, this._saldo);
}

class ContaCorrente extends Conta {
  ContaCorrente(super.titular, super._saldo);

  double emprestimo = 300;

  @override
  void enviarDinheiro(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    } else {
      print("Saldo mais emprestimo insuficientes para transferencia.");
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }

  ContaPoupanca(super.titular, super._saldo);
}

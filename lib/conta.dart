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

class Pessoa {
  String _nome = "";
  late double _altura;
  late double _peso;

  Pessoa(this._nome, this._altura, this._peso); //construtor da classe Pessoa

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }
}

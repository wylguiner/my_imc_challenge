import 'package:my_imc_challenge/classes/pessoa.dart';

class Calculo {
  String calcularImc(Pessoa pessoa) {
    String imc = (pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura()))
        .toStringAsFixed(2);

    return imc;
  }

  String? resultadoIMC(String imc) {
    double imcDouble = double.parse(imc);
    if (imcDouble < 16) {
      return 'Magreza grave';
    } else if (imcDouble >= 16 && imcDouble < 17) {
      return 'Magreza moderada';
    } else if (imcDouble >= 17 && imcDouble < 18.5) {
      return 'Magreza leve';
    } else if (imcDouble >= 18.5 && imcDouble < 25) {
      return 'Saudável';
    } else if (imcDouble >= 25 && imcDouble < 30) {
      return 'Sobrepeso';
    } else if (imcDouble >= 30 && imcDouble < 35) {
      return 'Obesidade grau I';
    } else if (imcDouble >= 35 && imcDouble < 40) {
      return 'Obesidade grau II (severa)';
    } else if (imcDouble >= 40) {
      return 'Obesidade grau III (mórbida)';
    }
    return null;
  }
}

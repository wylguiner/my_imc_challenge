import 'dart:convert';
import 'dart:io';

import 'package:my_imc_challenge/classes/pessoa.dart';
import 'package:my_imc_challenge/calculo.dart';

void main(List<String> arguments) {
  print(
      'Olá, iremos calcular o seu IMC! Para isso, por favor, digite seu NOME:');
  String nome = stdin.readLineSync().toString(); // Lê uma linha do terminal
  double altura;
  double peso;

  print("Olá $nome! Agora digite seu peso, por favor:");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    peso = double.parse(line ?? "null");
    print("$nome, seu peso é $peso kilos");
  } catch (e) {
    print("Você não informou um número");
    return;
  }

  print("Agora digite sua altura, por favor:");
  line = stdin.readLineSync(encoding: utf8);
  try {
    altura = double.parse(line ?? "null");
    print("$nome, sua altura é $altura metros");
  } catch (e) {
    print("Você não informou um número");
    return;
  }

  var pessoa = Pessoa(nome, altura, peso);
  var calculadora = Calculo();

  String imc = calculadora.calcularImc(pessoa);
  String resultado = calculadora.resultadoIMC(imc).toString();

  print("O IMC de ${pessoa.getNome()} é: $imc e seu resultado é $resultado");
}

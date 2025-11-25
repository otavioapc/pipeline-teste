// Arquivo: test/simple_test.dart
import 'package:test/test.dart';

// Inclua a função que está no main.dart
import '../main.dart'; 

void main() {
  // Teste Unitário mais simples para provar que a engine funciona
  test('Teste Unitário TUC01: Validação da Soma Básica', () {
    expect(somar(1, 1), 2);
  });
}

// Arquivo: test/simple_test.dart
import 'package:test/test.dart';

// Função simples que simula a validação de limite (Max 100 caracteres)
bool validarLimiteSimples(String input, int max) {
  return input.length <= max;
}

void main() {
  group('Testes Unitários de Lógica ()', () {

    // TUC01 - Validação de Limite (Análise de Valor-Limite)
    test('TUC01: Limite Máximo de Nome (101 > 100) deve falhar', () {
      String nomeLongo = 'A' * 101; 
      expect(validarLimiteSimples(nomeLongo, 100), isFalse);
    });

    // TUC02 - Lógica Simples 
    test('TUC02: Verificação da Lógica Básica (5 * 2 = 10)', () {
      expect(5 * 2, 10);
    });
  });
}

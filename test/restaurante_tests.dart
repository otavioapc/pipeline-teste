// Arquivo: test/restaurante_tests.dart
import 'package:test/test.dart'; 
import 'package:pipeline_teste/restaurante_validator.dart';

void main() {
  group('Testes Unitários de Regras de Negócio Robustas (TUCs)', () {

    // TUC01 - Nome (Análise de Valor-Limite: Limite Excedido - 101 caracteres)
    test('TUC01: Nome com 101 caracteres deve retornar FALSE', () {
      String nomeExcedido = 'A' * 101; 
      expect(validarLimiteTexto(nomeExcedido, 100), isFalse);
    });

    // TUC02 - CNPJ (Classe de Equivalência: Sequência Repetida - Inválida)
    test('TUC02: CNPJ com 14 zeros deve retornar FALSE', () {
        // Testa uma Classe de Equivalência Inválida comum (000.000.0000-00)
        expect(validarCNPJDados('00000000000000'), isFalse);
    });

    // TUC03 - Comparação de Senhas (Classe de Equivalência: Válida)
    test('TUC03: Senhas iguais devem retornar TRUE', () {
      expect(compararSenhas('senharest', 'senharest'), isTrue); 
    });

    // TUC04 - E-mail Válido (Teste de Formato - Classe Válida)
    test('TUC04: E-mail formatado corretamente deve retornar TRUE', () {
        // Prova que a função Regex está funcionando
        expect(validarFormatoEmail('restaurante@foodpass.com'), isTrue);
    });

    // TUC05 - E-mail Inválido (Teste de Formato - Classe Inválida)
    test('TUC05: E-mail sem o "@" deve retornar FALSE', () {
        // Prova que a validação de formato básico está funcionando (CEI)
        expect(validarFormatoEmail('restaurantefoodpass.com'), isFalse); 
    });
  });
}

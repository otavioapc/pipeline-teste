// Arquivo: lib/restaurante_validator.dart

// Lógica 1: Validação de Limite de Caracteres (Nome/Senha)
// Usado para testar AVL: limite superior e limite excedido
bool validarLimiteTexto(String input, int max) {
  return input.length <= max; 
}

// Lógica 2: Comparação de Senhas (CE Válida/Inválida)
bool compararSenhas(String senha, String confirmacao) {
  return senha == confirmacao; 
}

// Lógica 3: Validação de E-mail (Teste de Formato)
bool validarFormatoEmail(String email) {
    // Regex simples para garantir formato básico: algo@algo.algo
    final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return regex.hasMatch(email);
}

// Lógica 4: Validação CNPJ Simples (Teste de Regra)
bool validarCNPJDados(String cnpj) {
    // Regra: Deve ter o tamanho correto e não ser sequência repetida 
    if (cnpj.length != 14) return false;
    if (RegExp(r'(\d)\1{13}').hasMatch(cnpj)) return false; // Ex: 000...0 ou 111...1
    return true;
}

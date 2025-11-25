// Arquivo: lib/restaurante_validator.dart

// Lógica 1: Validação de Limite de Caracteres (Nome/Senha)
bool validarLimiteTexto(String input, int max) {
  return input.length <= max; 
}

// Lógica 2: Comparação de Senhas (TUC03)
bool compararSenhas(String senha, String confirmacao) {
  return senha == confirmacao; 
}

// Lógica 3: Validação de E-mail (TUCs 04/05)
bool validarFormatoEmail(String email) {
    // Regex simples para garantir formato básico: algo@algo.algo
    final regex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return regex.hasMatch(email);
}

// Lógica 4: Validação CNPJ Simples (TUCs 01/02)
bool validarCNPJDados(String cnpj) {
    // Regra: Deve ter o tamanho correto e não ser sequência repetida 
    if (cnpj.length != 14) return false;
    if (RegExp(r'(\d)\1{13}').hasMatch(cnpj)) return false; 
    return true;
}

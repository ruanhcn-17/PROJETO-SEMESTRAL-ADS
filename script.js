// Alternar visibilidade da senha
function togglePasswordVisibility() {
    var passwordInput = document.getElementById('senha');
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
    } else {
        passwordInput.type = 'password';
    }
}

// Formatar a data de nascimento automaticamente
function formatDate(input) {
    var value = input.value;

    if (value.length === 2 || value.length === 5) {
        input.value = value + '/';
    }
}

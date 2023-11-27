document.addEventListener('DOMContentLoaded', function () {
    // Inicializa o contador do carrinho
    let carrinhoCount = 0;

    // Seleciona o elemento que exibirá o contador
    const contadorCarrinho = document.getElementById('contador-carrinho');

    // Seleciona os botões "Adicionar ao Carrinho" individualmente
    const botaoBatataComum = document.getElementById('botao-batata-comum');
    const botaoBatataDoce = document.getElementById('botao-batata-doce');

    // Adiciona ouvintes de eventos para cada botão separadamente
    botaoBatataComum.addEventListener('click', function () {
        // Incrementa o contador
        carrinhoCount++;

        // Atualiza o texto do contador
        contadorCarrinho.textContent = carrinhoCount;
    });

    botaoBatataDoce.addEventListener('click', function () {
        // Incrementa o contador
        carrinhoCount++;

        // Atualiza o texto do contador
        contadorCarrinho.textContent = carrinhoCount;
    });
});

/*

// Inicializa o contador do carrinho
let carrinhoCount = 0;

// Seleciona todos os botões "Adicionar ao Carrinho"
const botoesCarrinho = document.querySelectorAll('.produto button');

// Seleciona o elemento que exibirá o contador
const contadorCarrinho = document.getElementById('contador-carrinho');

// Adiciona um escutador de eventos para cada botão
botoesCarrinho.forEach(function (botao) {
    botao.addEventListener('click', function () {
        // Incrementa o contador
        carrinhoCount++;

        // Atualiza o texto do contador
        contadorCarrinho.textContent = carrinhoCount;
    });
});


/*--------------------------------------------*/
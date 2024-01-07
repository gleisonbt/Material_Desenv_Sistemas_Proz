# Tutorial de Calculadora utilizando HTML/CSS/JS

Antes de começar, certifique-se de criar três arquivos vazios: `index.html`, `style.css` e `script.js` no mesmo diretório.

  
## Passo 1: Estrutura Básica HTML

Abra o arquivo `index.html` e comece com a estrutura básica HTML.

 

    <!DOCTYPE  html>
    <html  lang="pt-br">
    <head>
	    <meta  charset="UTF-8">
	    <meta  name="viewport"  content="width=device-width, initial-scale=1.0">
	    <title>Calculadora Simples</title>
	    <link  rel="stylesheet"  href="style.css">
    </head>
	    <body>
		    <!-- Conteúdo da calculadora vai aqui -->
		    <script  src="script.js"></script>
	    </body>
    </html>

  
  
## Passo 2: Criar a Calculadora

Dentro da tag `<body>`, adicione a estrutura da calculadora.

    <div  id="calculadora">
	    <input  type="text"  id="display"  readonly>
	    <!-- Botões da calculadora -->
    </div>

  
## Passo 3: Adicionar Botões

Dentro da div com `id="calculadora"`, adicione os botões da calculadora. Nos eventos `onClick` serão chamadas as funções respectivas de cada botão da calculadora.

    <!-- Botões da calculadora -->
    <button  onclick="limparDisplay()">C</button>
    <button  onclick="apagarUltimo()">←</button>
    <button  onclick="adicionarCaractere('/')">/</button>
    <button  onclick="adicionarCaractere('*')">*</button>
    <button  onclick="adicionarCaractere('7')">7</button>
    <button  onclick="adicionarCaractere('8')">8</button>
    <button  onclick="adicionarCaractere('9')">9</button>
    <button  onclick="adicionarCaractere('-')">-</button>
    <button  onclick="adicionarCaractere('4')">4</button>
    <button  onclick="adicionarCaractere('5')">5</button>
    <button  onclick="adicionarCaractere('6')">6</button>
    <button  onclick="adicionarCaractere('+')">+</button>
    <button  onclick="adicionarCaractere('1')">1</button>
    <button  onclick="adicionarCaractere('2')">2</button>
    <button  onclick="adicionarCaractere('3')">3</button>
    <button  onclick="calcularResultado()">=</button>


##  Passo 4: Adicionar Estilos  
  
No arquivo `style.css`, adicione estilos básicos para a calculadora.

### Corpo da página

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        background-color: #f0f0f0;
    }
-   `font-family`: Define a fonte do texto para Arial.
-   `margin` e `padding`: Remove margens e preenchimentos padrão do corpo.
-   `display: flex`: Utiliza o modelo de layout flexível para centralizar o conteúdo na tela.
-   `align-items` e `justify-content`: Centralizam o conteúdo vertical e horizontalmente.
-   `min-height: 100vh`: Garante que o corpo da página ocupe pelo menos a altura total da janela de visualização.
-   `background-color`: Define a cor de fundo como um cinza claro.
  
### Display da Calculadora

    #display {
        grid-area: display;
        height: 40px;
        font-size: 18px;
        text-align: right;
        padding: 5px;
        margin-bottom: 10px;
    }

-   `grid-area`: Define a área do grid a que o elemento pertence (usado na estrutura de layout da calculadora).
-   `height`: Altura do campo de exibição.
-   `font-size`: Tamanho da fonte no campo de exibição.
-   `text-align`: Alinha o texto à direita no campo de exibição.
-   `padding`: Adiciona preenchimento ao redor do campo de exibição.
-   `margin-bottom`: Adiciona margem na parte inferior do campo de exibição.

### Botões da Calculadora

    button {
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f4f4f4;
        cursor: pointer;
    }
    
    button:hover {
        background-color: #e0e0e0;
    }
    
    button:active {
        background-color: #ccc;
    }

-   `padding`: Adiciona preenchimento interno aos botões.
-   `font-size`: Define o tamanho da fonte nos botões.
-   `border`: Adiciona uma borda fina ao redor dos botões.
-   `border-radius`: Adiciona bordas arredondadas aos botões.
-   `background-color`: Define a cor de fundo padrão dos botões.
-   `cursor: pointer`: Muda o cursor para a mão quando passa sobre os botões.
-   `:hover`: Altera a cor de fundo quando o mouse passa sobre os botões.
-   `:active`: Altera a cor de fundo quando um botão é pressionado.

### Layout da Calculadora (Usando Grid Layout)

    #calculadora {
        display: grid;
        grid-gap: 10px;
        max-width: 400px;
        margin: 20px;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        grid-template-areas:
            "display display display display"
            "limpar apagar dividir multiplicar"
            "sete oito nove subtrair"
            "quatro cinco seis somar"
            "um dois tres igual";
    }
-   `display: grid`: Ativa o modelo de layout de grade para o contêiner da calculadora.
-   `grid-gap`: Define o espaçamento entre as células do grid.
-   `max-width`: Limita a largura máxima da calculadora.
-   `margin`: Adiciona margens externas à calculadora.
-   `padding`: Adiciona preenchimento interno à calculadora.
-   `background-color`: Define a cor de fundo da calculadora.
-   `border-radius`: Adiciona bordas arredondadas à calculadora.
-   `box-shadow`: Adiciona uma sombra sutil à calculadora.
-   `grid-template-areas`: Define a estrutura do grid, atribuindo áreas específicas a cada elemento com base em seus IDs.

Esses estilos combinados proporcionam uma aparência agradável e uma estrutura de layout com usabilidade para a calculadora. O uso de `grid-template-areas` facilita a criação de um layout claro e organizado.


## Passo 5: Adicionar Lógica JavaScript

No arquivo `script.js`, adicione a lógica JavaScript para as funções da calculadora.

    function limparDisplay() {
	    document.getElementById('display').value = '';
    }
    
    function apagarUltimo() { 
	    var display = document.getElementById('display');
	    display.value = display.value.slice(0, -1);
    }

    function adicionarCaractere(caractere) {  
	    document.getElementById('display').value += caractere;
    }

    function calcularResultado() {
	    var display = document.getElementById('display');
		display.value = eval(display.value);
    }
### Notas sobre o código Js:

A linha `document.getElementById('display').value += caractere;` está associada à função JavaScript chamada `adicionarCaractere()`.

 1. `document.getElementById('display')`: Este trecho de código utiliza a função `getElementById` para obter uma referência ao elemento HTML cujo ID é "display". Neste caso, refere-se ao campo de entrada (input) onde os caracteres da calculadora são exibidos.
 2. `.value`: O `.value` é usado para acessar e modificar o valor do campo de entrada. No contexto de uma calculadora, este valor representa a expressão matemática que está sendo construída à medida que o usuário pressiona os botões.
 3. `+= caractere;`: Este é um operador que adiciona o valor da variável `caractere` ao final da string existente no campo de entrada. Isso é equivalente a `display.value = display.value + caractere;`. Portanto, ele está **concatenando** o caractere específico pressionado pelo usuário à expressão matemática existente.

  
A linha `display.value = display.value.slice(0, -1);` está associada à função JavaScript chamada `apagarUltimo()`.

 1. `display.value`: Aqui, `display` refere-se ao elemento de entrada
    (input) com o ID "display" na sua calculadora. O `.value` é usado
    para acessar e modificar o valor desse elemento, que geralmente é o
    texto dentro do campo de entrada.
 2. `.slice(0, -1)`: O método `.slice()` é usado para extrair uma parte
    de uma string. Neste caso, `0` é o índice inicial, e `-1` é o índice
    final, excluindo o último caractere. Isso significa que estamos
    removendo o último caractere da string.

A linha `display.value = eval(display.value);` está associada à função JavaScript chamada `calcularResultado()`.

 1. `display.value`: Aqui, `display` refere-se ao elemento de entrada
    (input) com o ID "display" na sua calculadora. O `.value` é usado
    para acessar e modificar o valor desse elemento, que geralmente é o
    texto dentro do campo de entrada.
 2. `eval(display.value)`: A função `eval()` é uma função global em JavaScript que 	avalia uma string como código JavaScript. Neste caso, `display.value` contém uma expressão matemática como uma string. O `eval()` avalia essa expressão, calcula o resultado e retorna o valor resultante.
 3. `display.value = eval(display.value);`: O resultado do cálculo é atribuído de volta ao valor do campo de entrada da calculadora, substituindo assim a expressão original.

  
Agora, ao abrir o arquivo `index.html` em um navegador, você verá a calculadora simples em ação. Certifique-se de manter os arquivos HTML, CSS e JavaScript no mesmo diretório para que tudo funcione corretamente. Personalize o estilo e a lógica conforme seu projeto!

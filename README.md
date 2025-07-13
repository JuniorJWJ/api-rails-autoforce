# Documentação da API de Veículos

## Introdução

Esta documentação detalha a API de Veículos desenvolvida em Ruby on Rails, que oferece funcionalidades para gerenciar e consultar dados de veículos. A API foi projetada para ser simples e eficiente, fornecendo acesso a informações como listagem de todos os veículos, busca por ID e um endpoint dedicado para veículos em promoção. 

## Configuração do Ambiente

Para configurar e executar esta API localmente, siga os passos abaixo:

### Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

*   **Ruby**: Versão 3.x (ou compatível com a versão utilizada no projeto, que é 7.1)
*   **Rails**: Versão 7.1.x
*   **Bundler**: Gerenciador de dependências do Ruby

### Instalação

1.  **Clone o repositório** (assumindo que o código está em um repositório Git):

    ```bash
    git clone https://github.com/JuniorJWJ/api-rails-autoforce.git
    cd api-rails-autoforce
    ```

2.  **Instale as dependências do Ruby**: Navegue até o diretório raiz do projeto e execute:

    ```bash
    bundle install
    ```

3.  **Configuração do CORS**: A API já vem configurada para lidar com requisições Cross-Origin Resource Sharing (CORS). A configuração permite acesso de qualquer origem (`*`) e suporta os métodos HTTP `GET`, `POST`, `PUT`, `PATCH`, `DELETE`, `OPTIONS` e `HEAD`. Esta configuração está localizada em `config/initializers/cors.rb` (ou similar, dependendo da estrutura do projeto).

    ```ruby
    # config/initializers/cors.rb
    Rails.application.config.middleware.insert_before 0, Rack::Cors do
        allow do
          origins 
          resource 
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head]
        end
      end
    ```

4.  **Executar a Aplicação**: Inicie o servidor Rails:

    ```bash
    rails server
    ```

    A API estará disponível em `http://localhost:3000` (ou a porta configurada).

## Estrutura do Projeto

O projeto segue a estrutura padrão de uma aplicação Rails, com algumas particularidades para a API:

*   **`config/application.rb`**: Contém as configurações globais da aplicação, incluindo a adição do diretório `app/data` aos `autoload_paths` para que os dados dos veículos sejam carregados automaticamente. A linha `config.api_only = true` indica que esta é uma aplicação Rails apenas para API, otimizando o carregamento de middlewares.
*   **`config/routes.rb`**: Define todas as rotas da API, mapeando os endpoints para as ações correspondentes nos controladores. As rotas são aninhadas sob `namespace :api do namespace :v1 do ... end end` para versionamento da API.
*   **`app/controllers/api/v1/vehicles_controller.rb`**: Este é o controlador principal que lida com as requisições relacionadas a veículos. Ele contém as ações para listar todos os veículos (`index`), buscar um veículo específico por ID (`show`) e encontrar o veículo em promoção (`promotion`).
*   **`app/data/vehicle_data.rb`**: Este módulo atua como uma fonte de dados estática para os veículos. Ele simula um banco de dados, retornando um array de hashes com os detalhes dos veículos. Em um ambiente de produção, esta parte seria substituída por um banco de dados real.

## Endpoints da API

A API de Veículos expõe os seguintes endpoints:

### 1. Listar todos os veículos

*   **Endpoint**: `GET /api/v1/vehicles`
*   **Descrição**: Retorna uma lista completa de todos os veículos disponíveis na base de dados.
*   **Exemplo de Requisição (cURL)**:

    ```bash
    curl -X GET http://localhost:3000/api/v1/vehicles
    ```

*   **Exemplo de Resposta (200 OK)**:

    ```json
    [
      {
        "id": 1,
        "year": "2023",
        "brand": "Chevrolet",
        "model": "Onix",
        "subtitle": "1.0 TURBO FLEX PLUS AUTOMÁTICO",
        "transmission": "AUTOMÁTICO",
        "mileage": "5.000 KM",
        "fuel": "FLEX",
        "price": "R$ 92.500,00",
        "image_url": "car1.jpg",
        "promotion": true,
        "color": "Prata",
        "plate_end": "7",
        "badges": [
          { "text": "TURBO", "type": "turbo" }
        ]
      },
      {
        "id": 2,
        "year": "2022",
        "brand": "Volkswagen",
        "model": "Nivus",
        "subtitle": "1.0 200 TSI COMFORTLINE",
        "transmission": "AUTOMÁTICO",
        "mileage": "18.000 KM",
        "fuel": "FLEX",
        "price": "R$ 112.900,00",
        "image_url": "car2.jpg",
        "promotion": false,
        "color": "Prata",
        "plate_end": "5",
        "badges": []
      }
    ]
    ```

### 2. Buscar veículo por ID

*   **Endpoint**: `GET /api/v1/vehicles/:id`
*   **Descrição**: Retorna os detalhes de um veículo específico com base no seu identificador único.
*   **Parâmetros de Caminho**:
    *   `:id` (inteiro, obrigatório): O ID do veículo a ser buscado.
*   **Exemplo de Requisição (cURL)**:

    ```bash
    curl -X GET http://localhost:3000/api/v1/vehicles/1
    ```

*   **Exemplo de Resposta (200 OK)**:

    ```json
    {
      "id": 1,
      "year": "2023",
      "brand": "Chevrolet",
      "model": "Onix",
      "subtitle": "1.0 TURBO FLEX PLUS AUTOMÁTICO",
      "transmission": "AUTOMÁTICO",
      "mileage": "5.000 KM",
      "fuel": "FLEX",
      "price": "R$ 92.500,00",
      "image_url": "car1.jpg",
      "promotion": true,
      "color": "Prata",
      "plate_end": "7",
      "badges": [
        { "text": "TURBO", "type": "turbo" }
      ]
    }
    ```

*   **Exemplo de Resposta de Erro (404 Not Found)**:

    ```json
    {
      "error": "Vehicle not found"
    }
    ```

### 3. Veículo em promoção

*   **Endpoint**: `GET /api/v1/vehicle/promotion`
*   **Descrição**: Retorna os detalhes do veículo que está atualmente marcado como promoção. Se houver mais de um veículo em promoção, ele retornará o primeiro encontrado.
*   **Exemplo de Requisição (cURL)**:

    ```bash
    curl -X GET http://localhost:3000/api/v1/vehicle/promotion
    ```

*   **Exemplo de Resposta (200 OK)**:

    ```json
    {
      "id": 1,
      "year": "2023",
      "brand": "Chevrolet",
      "model": "Onix",
      "subtitle": "1.0 TURBO FLEX PLUS AUTOMÁTICO",
      "transmission": "AUTOMÁTICO",
      "mileage": "5.000 KM",
      "fuel": "FLEX",
      "price": "R$ 92.500,00",
      "image_url": "car1.jpg",
      "promotion": true,
      "color": "Prata",
      "plate_end": "7",
      "badges": [
        { "text": "TURBO", "type": "turbo" }
      ]
    }
    ```

*   **Exemplo de Resposta de Erro (404 Not Found)**:

    ```json
    {
      "error": "No promotion vehicle found"
    }
    ```

## Estrutura dos Dados do Veículo

Cada objeto de veículo retornado pela API possui os seguintes atributos:

| Atributo    | Tipo     | Descrição                                                              |
| :---------- | :------- | :--------------------------------------------------------------------- |
| `id`        | Inteiro  | Identificador único do veículo.                                        |
| `year`      | String   | Ano de fabricação do veículo.                                          |
| `brand`     | String   | Marca do veículo (ex: "Chevrolet", "Volkswagen").                      |
| `model`     | String   | Modelo do veículo (ex: "Onix", "Nivus").                             |
| `subtitle`  | String   | Subtítulo ou versão específica do modelo (ex: "1.0 TURBO FLEX PLUS AUTOMÁTICO"). |
| `transmission`| String   | Tipo de transmissão (ex: "AUTOMÁTICO", "MANUAL").                    |
| `mileage`   | String   | Quilometragem do veículo (ex: "5.000 KM").                             |
| `fuel`      | String   | Tipo de combustível (ex: "FLEX", "GASOLINA").                        |
| `price`     | String   | Preço do veículo (ex: "R$ 92.500,00").                                 |
| `image_url` | String   | URL da imagem principal do veículo.                                    |
| `promotion` | Booleano | Indica se o veículo está em promoção (`true`) ou não (`false`).        |
| `color`     | String   | Cor do veículo (ex: "Prata", "Branco").                              |
| `plate_end` | String   | Último dígito da placa do veículo.                                     |
| `badges`    | Array    | Lista de tags ou selos associados ao veículo. Cada item é um objeto com `text` e `type`. |

## Considerações Finais

Foi muito bom aprender um pouco de Ruby e o framework Ruby on Rails neste desafio técnico, foi bastante desafiador, pois nunca havia utilizado anteriormente.  

Um dos maiores desafios foi configurar o ambiente de desenvolvimento, pois precisei usar o WSL (Windows Subsystem for Linux) para rodar o servidor, já que o Rails exige um ambiente Linux. Para isso, busquei tutoriais no YouTube que me ajudaram na instalação e configuração.

Utilizei IAs para estruturar o projeto e tirar minhas dúvidas também.

Além disso, encontrei dificuldades para navegar pelas pastas do sistema. Por exemplo, precisei utilizar comandos como `cd /mnt/c/Users/JR/Documents/Dev/Ruby` para acessar os diretórios corretamente no ambiente Linux. Embora tenha sido um desafio, essa experiência me ensinou muito sobre a interação entre sistemas operacionais diferentes.

Estou bastante satisfeito com meu desempenho, mesmo que tenha feito pouca coisa, pois a API está apenas com métodos GETs e dados estáticos, pois nao usei banco de dados

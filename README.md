# 🎬 CineBox App

O CineBox é um aplicativo desenvolvido em Flutter para a exploração de filmes, permitindo que os usuários descubram filmes populares, vejam detalhes, assistam a trailers e muito mais.

## 🚀 Começando

Estas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

### Pré-requisitos

O que você precisa para instalar e rodar o projeto:

*   Flutter SDK (versão 3.x.x ou superior)
*   Dart SDK
*   Um editor de código como VS Code ou Android Studio.

### Instalação

Siga os passos abaixo para ter um ambiente de desenvolvimento rodando:

1.  Clone o repositório:

    ```sh
    git clone https://github.com/pinheiropaulo/Flutter_Experience_CineBox
    ```
2.  Entre no diretório do projeto:

    ```sh
    cd CineBox_App
    ```
3.  Instale as dependências (pacotes e plugins):

    ```sh
    flutter pub get
    ```
4.  **Geração de Código e Assets**:
    Este projeto utiliza geradores de código para assets, injeção de dependência (Riverpod), requisições de API (Retrofit), etc.

    > **Importante:** Os arquivos de código gerado (`*.g.dart`) não são versionados no Git (veja o arquivo `.gitignore`). Portanto, é um passo **obrigatório** executar o `build_runner` após clonar o projeto pela primeira vez.

    - **Assets**: Para gerar as referências dos assets, é utilizado o pacote `flutter_asset_generator`. Se você não o tiver instalado globalmente, instale-o com `dart pub global activate flutter_asset_generator`.

    Após adicionar novos assets, execute:
      ```sh
      fgen -o lib\ui\core\themes\resource.dart
      ```

    - **Código**: Para gerar os arquivos `.g.dart`, o `build_runner` é utilizado. É recomendado deixá-lo rodando em um terminal para gerar o código automaticamente enquanto você desenvolve.

      ```sh
      dart run build_runner watch -d
      ```
      > **Nota:** Se você encontrar conflitos ou problemas com os arquivos gerados, pode ser útil limpá-los antes de rodar o comando `watch` novamente:
      > ```sh
      > dart run build_runner clean
      > ```

5.  Execute o aplicativo:
    *Com o `build_runner` rodando em um terminal, abra **outro terminal** e execute o app.*
    ```sh
    flutter run
    ```

## 🛠️ Plugins e Pacotes Utilizados

*   **flutter_riverpod**: Solução de gerenciamento de estado.
*   **riverpod_annotation**: Anotações para o `riverpod_generator` para simplificar a criação de providers.
*   **envied**: Gerencia variáveis de ambiente de forma segura e com geração de código.
*   **retrofit**: Cliente HTTP type-safe para Dart, inspirado no Retrofit do Android.
*   **logger**: Pacote para logging, útil para depuração.
*   **json_annotation**: Anotações para o `json_serializable` para facilitar a conversão de/para JSON.
*   **dio**: Um poderoso cliente HTTP para Dart, que suporta interceptadores, FormData, cancelamento de requisições, etc.
*   **loading_animation_widget**: Fornece uma coleção de belos widgets de animação de carregamento.
*   **flutter_secure_storage**: Para armazenamento seguro e persistente de dados (como tokens de autenticação).
*   **google_sign_in**: Permite a integração com o login do Google para autenticação de usuários.

### Dependências de Desenvolvimento (`dev_dependencies`)

*   **build_runner**: Um construtor de pacotes para gerar arquivos a partir de anotações.
*   **custom_lint**: Permite a criação de regras de lint personalizadas para o projeto.
*   **riverpod_lint**: Regras de lint específicas para o uso do Riverpod.
*   **riverpod_generator**: Gerador de código para `riverpod` que simplifica a criação de providers.
*   **envied_generator**: Gerador de código para o pacote `envied`.
*   **retrofit_generator**: Gerador de código para o pacote `retrofit`.
*   **json_serializable**: Gera código para serialização/desserialização de JSON.

#EN/PT-Br
# Guided App 

This is a Flutter application named "Guided App". The application is structured into three main parts: `main.dart`, `models`, and `screens`.

Este é um aplicativo Flutter chamado "Guided App". O aplicativo está estruturado em três partes principais: `main.dart`, `models` e `screens`.

## Models

The `models` directory contains two files: `app_state.dart` and `app_state_provider.dart`. These files define the state management for the application.

O diretório `models` contém dois arquivos: `app_state.dart` e `app_state_provider.dart`. Esses arquivos definem o gerenciamento de estado para o aplicativo.

- **app_state.dart**: Defines the `MyAppState` class, which holds the current state of the application, including the current pair and the favorites.
- **app_state_provider.dart**: Provides the `MyAppState` instance to the rest of the application using the Provider package.
  
- **app_state.dart**: Define a classe `MyAppState`, que armazena o estado atual do aplicativo, incluindo o par atual e os favoritos.
- **app_state_provider.dart**: Fornece a instância `MyAppState` para o restante do aplicativo usando o pacote Provider.

## Screens

The `screens` directory contains three files: `home_page.dart`, `favorites_page.dart`, and `generator_page.dart`. These files define the different screens of the application.

- **home_page.dart**: Main screen of the application. It uses a `NavigationRail` to navigate between the `GeneratorPage` and `FavoritesPage`.
- **favorites_page.dart**: Displays the favorite pairs. If there are no favorites, it shows a message saying "No favorites yet." Otherwise, it lists all the favorite pairs.
- **generator_page.dart**: Displays the current pair and allows the user to toggle whether the pair is a favorite and to get the next pair.

O diretório `screens` contém três arquivos: `home_page.dart`, `favorites_page.dart` e `generator_page.dart`. Esses arquivos definem as diferentes telas do aplicativo.

- **home_page.dart**: Tela principal do aplicativo. Usa um `NavigationRail` para navegar entre `GeneratorPage` e `FavoritesPage`.
- **favorites_page.dart**: Exibe os pares favoritos. Se não houver favoritos, exibe uma mensagem dizendo "Sem favoritos ainda." Caso contrário, lista todos os pares favoritos.
- **generator_page.dart**: Exibe o par atual e permite ao usuário alternar se o par é favorito e obter o próximo par.

## Running the Application / Executando o Aplicativo

To run the application, use the following command in the terminal. Make sure you have Flutter installed and set up correctly.

Para executar o aplicativo, use o seguinte comando no terminal. Certifique-se de que o Flutter esteja instalado e configurado corretamente.

```bash
flutter run

# Guided App

This is a Flutter application named "Guided App". The application is structured into three main parts: `main.dart`, `models`, and `screens`.

## Models

The `models` directory contains two files: `app_state.dart` and `app_state_provider.dart`. These files define the state management for the application.

- **app_state.dart**: Defines the `MyAppState` class, which holds the current state of the application, including the current pair and the favorites.
- **app_state_provider.dart**: Provides the `MyAppState` instance to the rest of the application using the Provider package.

## Screens

The `screens` directory contains three files: `home_page.dart`, `favorites_page.dart`, and `generator_page.dart`. These files define the different screens of the application.

- **home_page.dart**: Main screen of the application. It uses a `NavigationRail` to navigate between the `GeneratorPage` and `FavoritesPage`.
- **favorites_page.dart**: Displays the favorite pairs. If there are no favorites, it shows a message saying "No favorites yet." Otherwise, it lists all the favorite pairs.
- **generator_page.dart**: Displays the current pair and allows the user to toggle whether the pair is a favorite and to get the next pair.

## Running the Application

To run the application, use the following command in the terminal. Make sure you have Flutter installed and set up correctly.

```bash
flutter run

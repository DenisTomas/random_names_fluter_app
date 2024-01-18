import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:guided_app/models/app_state.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return const Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: const Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                final myAppState =
                    Provider.of<MyAppState>(context, listen: false);
                showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Confirm Deletion"),
                        content: const Text(
                            "Are you sure you want to delete this item?"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text("Cancel"),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                          TextButton(
                            child: const Text("Delete"),
                            onPressed: () {
                              myAppState.removeFavorite(pair);
                              Navigator.of(context).pop(true);
                            },
                          ),
                        ],
                      ),
                    );
              },
            ),
          ),
      ],
    );
  }
}

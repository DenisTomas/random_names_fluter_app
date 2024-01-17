import 'package:flutter/material.dart';
import 'package:guided_app/models/app_state.dart';
import 'package:provider/provider.dart';

class AppStateProvider extends StatelessWidget {
  const AppStateProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: child,
    );
  }
}
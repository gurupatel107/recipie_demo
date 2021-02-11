import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:recipie_demo/providers/auth_provder.dart';
import 'package:recipie_demo/ui/intro/intro.dart';
import 'package:recipie_demo/ui/login/login.dart';
import 'package:recipie_demo/utils/navigation.dart';

void main() {
  runApp(ProviderScope(observers: [Logger()], child: MyApp()));
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Intro(),
      onGenerateRoute: NavigationUtils.generateRoute,
    );
  }
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/bl/wallet_bloc.dart';
import 'package:starname_demo/src/presentation/main_screen.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        home: BlocProvider(
          create: (_) => WalletBloc(),
          child: const MainScreen(),
        ),
      );
}

const appTitle = 'Starname Registration';

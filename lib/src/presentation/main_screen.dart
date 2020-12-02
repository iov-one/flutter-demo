import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/bl/wallet_bloc.dart';
import 'package:starname_demo/src/bl/wallet_event.dart';
import 'package:starname_demo/src/bl/wallet_state.dart';
import 'package:starname_demo/src/presentation/app.dart';
import 'package:starname_demo/src/presentation/transaction_form.dart';
import 'package:starname_demo/src/presentation/wallet_form.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) => state.maybeWhen(
          success: (wallet) => Scaffold(
            appBar: AppBar(
              title: const Text(appTitle),
              actions: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => context
                      .read<WalletBloc>()
                      .add(const WalletEvent.deleted()),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(wallet.bech32Address),
                    const SizedBox(height: 32),
                    const TransactionForm(),
                  ],
                ),
              ),
            ),
          ),
          orElse: () => const WalletForm(),
        ),
      );
}

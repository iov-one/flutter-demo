import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:starname_demo/src/bl/wallet_bloc/wallet_bloc.dart';
import 'package:starname_demo/src/bl/wallet_bloc/wallet_event.dart';
import 'package:starname_demo/src/bl/wallet_bloc/wallet_state.dart';
import 'package:starname_demo/src/presentation/app.dart';
import 'package:starname_demo/src/presentation/button_progress_indicator.dart';

class WalletForm extends StatelessWidget {
  const WalletForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocConsumer<WalletBloc, WalletState>(
        listener: (context, state) => state.maybeWhen<void>(
          failure: () => Scaffold.of(context).showSnackBar(
              const SnackBar(content: Text('Wallet creating failed.'))),
          orElse: () {},
        ),
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text(appTitle)),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: state is Creating
                    ? null
                    : () => context
                        .read<WalletBloc>()
                        .add(const WalletEvent.created()),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (state is Creating) const ButtonProgressIndicator(),
                    const Text('Create Wallet'),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

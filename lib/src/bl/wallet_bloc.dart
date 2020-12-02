import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/bl/wallet.dart';
import 'package:starname_demo/src/bl/wallet_event.dart';
import 'package:starname_demo/src/bl/wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const WalletState.none());

  @override
  Stream<WalletState> mapEventToState(WalletEvent event) => event.map(
        initialized: _mapInitialized,
        created: _mapCreated,
        deleted: _mapDeleted,
      );

  Stream<WalletState> _mapInitialized(Initialized event) async* {
    // todo: load wallet from storage if available
  }

  Stream<WalletState> _mapCreated(Created event) async* {
    yield const WalletState.creating();
    try {
      final wallet = await createWallet();
      yield WalletState.success(wallet);
    } on Exception {
      yield const WalletState.failure();
      yield const WalletState.none();
    }
  }

  Stream<WalletState> _mapDeleted(Deleted event) async* {
    // todo: delete wallet from storage
    yield const WalletState.none();
  }
}

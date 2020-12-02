import 'package:bip39/bip39.dart' as bip39;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:starname_demo/src/bl/wallet.dart';
import 'package:starname_demo/src/bl/wallet_bloc/wallet_event.dart';
import 'package:starname_demo/src/bl/wallet_bloc/wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc(this._storage) : super(const WalletState.none());

  final FlutterSecureStorage _storage;

  @override
  Stream<WalletState> mapEventToState(WalletEvent event) => event.map(
        initialized: _mapInitialized,
        created: _mapCreated,
        deleted: _mapDeleted,
      );

  Stream<WalletState> _mapInitialized(Initialized event) async* {
    yield const WalletState.creating();
    final mnemonic = await _storage.read(key: _mnemonicKey);
    if (mnemonic == null) {
      yield const WalletState.none();
      return;
    }

    try {
      final wallet = await createWallet(mnemonic);
      yield WalletState.success(wallet);
    } on Exception {
      yield const WalletState.none();
      return;
    }
  }

  Stream<WalletState> _mapCreated(Created event) async* {
    yield const WalletState.creating();
    try {
      final mnemonic = bip39.generateMnemonic(strength: 256);
      final wallet = await createWallet(mnemonic);
      await wallet.credit();
      await _storage.write(key: _mnemonicKey, value: mnemonic);
      yield WalletState.success(wallet);
      print(wallet.bech32Address);
    } on Exception {
      yield const WalletState.failure();
      yield const WalletState.none();
    }
  }

  Stream<WalletState> _mapDeleted(Deleted event) async* {
    await _storage.delete(key: _mnemonicKey);
    yield const WalletState.none();
  }
}

const _mnemonicKey = 'mnemonic';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starname_demo/src/bl/account_bloc/account_bloc.dart';
import 'package:starname_demo/src/bl/account_bloc/account_event.dart';
import 'package:starname_demo/src/bl/account_bloc/account_state.dart';

class AccountForm extends StatefulWidget {
  const AccountForm({Key key}) : super(key: key);

  @override
  AccountFormState createState() => AccountFormState();
}

class AccountFormState extends State<AccountForm> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _address = TextEditingController();

  Future<void> _createAccount() async {
    if (!_formKey.currentState.validate()) return;

    final account = Account(name: _name.text, ethAddress: _address.text);
    context.read<AccountBloc>().add(AccountEvent.created(account));
  }

  Future<void> _updateAccount() async {
    if (!_formKey.currentState.validate()) return;

    final account = Account(name: _name.text, ethAddress: _address.text);
    context.read<AccountBloc>().add(AccountEvent.updated(account));
  }

  void _onStateChanged(BuildContext context, AccountState state) =>
      state.maybeWhen<void>(
        accountFailure: () => Scaffold.of(context)
            .showSnackBar(const SnackBar(content: Text('Operation failed'))),
        accountSuccess: () => Scaffold.of(context)
            .showSnackBar(const SnackBar(content: Text('Operation succeeded'))),
        accountReady: (a) {
          _name.text = a.name;
          _address.text = a.ethAddress;
        },
        orElse: () {},
      );

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: BlocConsumer<AccountBloc, AccountState>(
          listener: _onStateChanged,
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Starname',
                    hintText: 'ex: antoine',
                    suffix: Text('*iov'),
                  ),
                  controller: _name,
                  readOnly: state is! NoAccount,
                  validator: _requiredValidator,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _address,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Ethereum address',
                    hintText: 'ex: 0x11AE8..',
                  ),
                  readOnly: state is! NoAccount && state is! AccountReady,
                  validator: _requiredValidator,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: state.when(
                  noAccount: () => ElevatedButton(
                    onPressed: _createAccount,
                    child: const Text('Register'),
                  ),
                  creatingAccount: () => const ElevatedButton(
                    onPressed: null,
                    child: Text('Register'),
                  ),
                  updatingAccount: () => const ElevatedButton(
                    onPressed: null,
                    child: Text('Update'),
                  ),
                  accountFailure: () => Container(),
                  accountSuccess: () => Container(),
                  accountReady: (_) => ElevatedButton(
                    onPressed: _updateAccount,
                    child: const Text('Update'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

String _requiredValidator(String value) =>
    value.isEmpty ? 'Please enter some text' : null;

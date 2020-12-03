import 'dart:io';

import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starname_demo/src/bl/account_bloc/account_bloc.dart';
import 'package:starname_demo/src/bl/account_bloc/account_event.dart';
import 'package:starname_demo/src/bl/account_bloc/account_state.dart';
import 'package:starname_demo/src/presentation/utils.dart';

class AccountForm extends StatefulWidget {
  const AccountForm({Key key}) : super(key: key);

  @override
  AccountFormState createState() => AccountFormState();
}

class AccountFormState extends State<AccountForm> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _address = TextEditingController();
  final _metaName = TextEditingController();
  final _imageKey = GlobalKey<FormFieldState<File>>();

  final picker = ImagePicker();

  Future<void> _createAccount() async {
    if (!_formKey.currentState.validate()) return;

    context.read<AccountBloc>().add(AccountEvent.created(
          name: _name.text,
          ethAddress: _address.text,
          metaName: _metaName.text,
          image: _imageKey.currentState.value,
        ));
  }

  Future<void> _updateAccount() async {
    if (!_formKey.currentState.validate()) return;

    context.read<AccountBloc>().add(AccountEvent.updated(
          ethAddress: _address.text,
          metaName: _metaName.text,
          image: _imageKey.currentState.value,
        ));
  }

  void _onStateChanged(BuildContext context, AccountState state) =>
      state.maybeWhen<void>(
        accountFailure: () => Scaffold.of(context)
            .showSnackBar(const SnackBar(content: Text('Operation failed'))),
        accountSuccess: () => Scaffold.of(context)
            .showSnackBar(const SnackBar(content: Text('Operation succeeded'))),
        accountReady: (a) async {
          final imageFile = await a.image?.let(urlToFile);
          setState(() {
            _name.text = a.name;
            _address.text = a.ethAddress;
            _metaName.text = a.metaName;
            _imageKey.currentState.didChange(imageFile);
          });
        },
        orElse: () {},
      );

  Future<void> _pickImage(FormFieldState<File> formState) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      formState.didChange(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: BlocConsumer<AccountBloc, AccountState>(
          listener: _onStateChanged,
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FormField<File>(
                key: _imageKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (v) => v == null ? 'Please select image' : null,
                builder: (formState) => GestureDetector(
                  onTap: state.maybeWhen<GestureTapCallback>(
                    noAccount: () => () => _pickImage(formState),
                    accountReady: (_) => () => _pickImage(formState),
                    orElse: () => null,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: formState.hasError
                              ? Theme.of(context).errorColor
                              : Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.38),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                    height: 100,
                    width: 100,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Icon(Icons.camera_alt),
                        if (formState.value != null)
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.file(
                                formState.value,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
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
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _metaName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Name',
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

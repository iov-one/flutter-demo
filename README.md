# starname_demo

Starname Registration demo app.

## Getting Started

Install the package by running:

```shell
flutter pub get
```

If you're getting analyzer errors, restart the analyzer server:

### VS Code
- Open the Command Palette (Ctrl+Shift+P)
- Enter and select "Reload Window". This also restarts the Dart analyzer.

### IntelliJ
- Open Find Action (Ctrl+Shift+A)
- Enter and select "Restart Dart Analysis Server"

Open `main.dart` file and paste `pinataApiKey` and `pinataApiSecretKey` using the corresponding values from your [Pinata](https://pinata.cloud/) account.

Run the application and press "Create wallet" button. After the wallet is created you can add your account: 
- select a photo from the gallery, 
- enter starname (without `*iov` suffix), 
- enter Ethereum address,
- enter display name,
- press "Create" button.

After an account is created you can change photo, Ethereum address and display name and press "Update" button.

The wallet is saved automatically and will be loaded after app restart. To delete the wallet press "Delete" button in the top right corner.

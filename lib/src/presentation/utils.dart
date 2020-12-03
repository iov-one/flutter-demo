import 'dart:io';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

final _rng = Random();

Future<File> urlToFile(String imageUrl) async {
  final tempDir = await getTemporaryDirectory();
  final tempPath = tempDir.path;
  final file = File('$tempPath${_rng.nextInt(100)}.png');
  final response = await http.get(imageUrl);
  await file.writeAsBytes(response.bodyBytes);
  return file;
}

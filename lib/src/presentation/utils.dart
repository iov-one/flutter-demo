import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

Future<File> urlToFile(String imageUrl) async {
  final tempDir = await getTemporaryDirectory();
  final tempPath = tempDir.path;
  final file = File('$tempPath${base64Encode(utf8.encode(imageUrl))}');
  final response = await http.get(imageUrl);
  await file.writeAsBytes(response.bodyBytes);
  return file;
}

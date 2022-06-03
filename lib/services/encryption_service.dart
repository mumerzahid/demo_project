import 'dart:io';
import 'package:aes_crypt/aes_crypt.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


@lazySingleton
class EncryptionService {
  String encryptFile(String path) {
    try {
      var crypt = AesCrypt();
      // crypt.setPassword(StaticInfo.userModel.id);
      crypt.aesSetMode(AesMode.cbc);
      crypt.setOverwriteMode(AesCryptOwMode.rename);

      String encFilepath = crypt.encryptFileSync(path);
      return encFilepath;
    } on AesCryptException catch (e) {
      if (e.type == AesCryptExceptionType.destFileExists) {
        print('The encryption has been completed unsuccessfully.');
        print(e.message);
      }
      return "";
    }
  }

  decryptFile(String url) async {
    try {
      String encryptedFilePath = await getFileFromUrl(url);
      var crypt = AesCrypt();
      crypt.aesSetMode(AesMode.cbc);
      // crypt.setPassword(StaticInfo.userModel.id);
      crypt.setOverwriteMode(AesCryptOwMode.rename);
      await Permission.storage.request();

      String path =
          "${'/storage/emulated/0/Download'}/${DateTime.now().millisecondsSinceEpoch.toString()}.pdf";

      String decFilepath = crypt.decryptFileSync(encryptedFilePath, path);
      print('The decryption has been completed successfully.');
      print('Decrypted file 1: $decFilepath');
      // print('File content: ' + File(decFilepath).readAsStringSync() + '\n');
    } on AesCryptException catch (e) {
      if (e.type == AesCryptExceptionType.destFileExists) {
        print('The decryption has been completed unsuccessfully.');
        print(e.message);
      }
    }
  }

  Future<String> getFileFromUrl(String url) async {
    try {
      var data = await http.get(Uri.parse(url));
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File(
          "${dir.path}/${DateTime.now().millisecondsSinceEpoch.toString()}.pdf.aes");

      File urlFile = await file.writeAsBytes(bytes);
      return urlFile.path;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }
}

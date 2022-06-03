import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

@lazySingleton
class ImageService {
  Future<String> saveFiles(String filePath, String folder) async {
    String? url;
    String id = DateTime.now().millisecondsSinceEpoch.toString();
    String fileName;
    String fileExtension;
    try {
      if (filePath == null) return "null";
       fileName = basename(filePath);
       fileExtension =  extension(filePath);
      print(" FileName "+fileName +" File Extension " + fileExtension);
      await FirebaseStorage.instance
          .ref()
          .child(folder)
          .child(id)
          .putFile(File(filePath))
          .then((value) async {
        url = await value.ref.getDownloadURL();
      });
      print("Uploaded Url :$url");
      return url!;
    } catch (err) {
      print(err);
      print('error in saving file: ${err}');
      return "null";
    }
  }
}

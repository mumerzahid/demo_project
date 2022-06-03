import 'package:injectable/injectable.dart';

@lazySingleton
class FileService {
  final String _fileCollection = "file_collection";
  final _usersKey = 'users';
  //
  // Future<bool> saveFileData(FileModel fileModel) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection(_usersKey)
  //         .doc(StaticInfo.userModel.id)
  //         .collection(_fileCollection)
  //         .doc(fileModel.id)
  //         .set(fileModel.toMap(), SetOptions(merge: true));
  //     return true;
  //   } catch (e) {
  //     print("error in Saving user");
  //     return false;
  //   }
  // }
  //
  // Future getMyFilesList() async {
  //   List<FileModel> allFiles = [];
  //
  //   try {
  //     var result = await FirebaseFirestore.instance
  //         .collection(_usersKey)
  //         .doc(StaticInfo.userModel.id)
  //         .collection(_fileCollection)
  //         .get();
  //     for (var doc in result.docs) {
  //       allFiles.add(FileModel.fromMap(doc.data()));
  //     }
  //     return allFiles;
  //   } catch (e) {
  //     print("Error: $e");
  //     return null;
  //   }
  // }
}

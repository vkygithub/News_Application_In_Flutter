import 'package:hive/hive.dart';


@HiveType(typeId: 0)
class News extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late String description;



  // Add other fields as needed
  News({required this.title, required this.description});
}

import 'package:hive_flutter/adapters.dart';
import '../../../core/helpers/app_constants.dart';
import '../../details_screen/data/models/book_details_response_model.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  _registerHiveAdapters();
  await Hive.openBox<BookDetailsResponseModel>(kBookItemBox);
}

void _registerHiveAdapters(){
  Hive.registerAdapter<BookDetailsResponseModel>(BookDetailsResponseModelAdapter());

}
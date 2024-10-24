import 'package:ebook_app/core/routing/app_router.dart';
import 'package:ebook_app/ebook_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'features/favorite/data/hive_init.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await initHive();
  runApp(EbookApp(
    appRouter: AppRouter(),
  ));
}

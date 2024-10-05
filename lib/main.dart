import 'package:ebook_app/core/routing/app_router.dart';
import 'package:ebook_app/ebook_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async{
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(EbookApp(
    appRouter: AppRouter(),
  ));
}

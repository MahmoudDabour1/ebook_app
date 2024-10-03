import 'package:ebook_app/core/routing/app_router.dart';
import 'package:ebook_app/ebook_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EbookApp(
      appRouter: AppRouter(),
    );
  }
}

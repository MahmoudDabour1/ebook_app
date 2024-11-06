import 'dart:async';
import 'package:ebook_app/core/helpers/extensions.dart';
import 'package:ebook_app/features/on_boarding/ui/widgets/buttons_widget.dart';
import 'package:ebook_app/features/on_boarding/ui/widgets/indicator_widget.dart';
import 'package:ebook_app/features/on_boarding/ui/widgets/onboarding_scroll_items.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/app_constants.dart';
import '../../../core/routing/routes.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int index = 0;
  bool _isOut = false;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        index = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (newIndex) {
                  setState(() {
                    _isOut = true;
                  });
                  Timer(Duration(milliseconds: 210), () {
                    setState(() {
                      if (index <= 2) {
                        index++;
                        _isOut = false;
                      }
                    });
                  });
                },
                itemCount: AppConstants.images.length,
                itemBuilder: (context, index) {
                  return OnboardingScrollItems(
                    index: index,
                    isOut: _isOut,
                  );
                },
              ),
            ),
            IndicatorWidget(index: index),
            ButtonsWidget(index: index,onNextPressed: (){
              setState(() {
                _isOut = true;
              });
              Timer(Duration(milliseconds: 210), () {
                setState(() {
                  if (index < 2) {
                    index++;
                    _isOut = false;
                  }
                });
              });
              if (index == 2) {
                context.pushNamed(Routes.bottomNavBarWidget);
              }
            },),
          ],
        ),
      ),
    );
  }
}

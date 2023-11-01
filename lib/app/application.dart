import 'package:f_test_work/app/router/app_router.dart';
import 'package:f_test_work/app/themes/app_themes.dart';
import 'package:f_test_work/core/ui/other/dismiss_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final appRouter = AppRouter();

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 787),
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.config(),
          theme: AppThemes.lightTheme,
          builder: (BuildContext context, Widget? child) {
            return DismissKeyboard(
                child: MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            ));
          },
        );
      },
    );
  }
}

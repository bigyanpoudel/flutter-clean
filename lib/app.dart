import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/features/BottomNavigation/view/navigation_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640), //desing resoution from figma
        builder: (_, __) => const MaterialApp(
              home: NavigationScreen(),
            ));
  }
}

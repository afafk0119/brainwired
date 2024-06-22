import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vinnovatetest/controllers/route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vinnovatetest/screen/productlisting.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(
            const ProviderScope(child: MyApp()), // Wrap your app
          ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 840),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'vinnovatest',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                color: Color(0xFFF9F4F0),
              ),
              textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.grey)),
              checkboxTheme: CheckboxThemeData(
                checkColor: MaterialStateProperty.all(Colors.white),
                fillColor: MaterialStateProperty.all(Colors.white),
              ),
              fontFamily: 'NotoSans',
              scaffoldBackgroundColor: const Color(0xFFF9F4F0),
              useMaterial3: true,
            ),
            home: const ProductListPage(),
            initialRoute: initialRoute,
            onGenerateRoute: Routers.generateRoute,
          );
        });
  }
}

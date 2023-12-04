import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';
import 'authentication/auth_repo.dart';
import 'constants/color_constants.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (value) => Get.put(
      AuthenticationRepository(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return ScreenUtilInit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PENSA AAMUSTED',
        theme: ThemeData(
          textTheme: GoogleFonts.numansTextTheme(
            Theme.of(context).textTheme,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
  */
    return ScreenUtilInit(
      builder: (BuildContext context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PENSA AAMUSTED',
        home: Container(
          color: const Color(0xFFFFFFFF),
          child: const NutsActivityIndicator(
            activeColor: Colors.white,
            inactiveColor: kPrimaryC,
            tickCount: 24,
            relativeWidth: 0.4,
            radius: 15,
            startRatio: 0.7,
            animationDuration: Duration(milliseconds: 500),
          ),
        ),
        defaultTransition: Transition.rightToLeft,
        color: kPrimaryC,
        theme: ThemeData(
          textTheme: GoogleFonts.numansTextTheme(
            Theme.of(context).textTheme,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:musicproject/albumdetail.dart';
import 'package:musicproject/dashboardleftscroll.dart';
//import 'package:musicproject/dashboardpage.dart';
import 'package:musicproject/homepage.dart';
import 'package:musicproject/pages/about.dart';
import 'package:musicproject/pages/downloads.dart';
import 'package:musicproject/pages/favourites.dart';
import 'package:musicproject/pages/languages_screen.dart';
import 'package:musicproject/pages/local.dart';
import 'package:musicproject/pages/mymusic.dart';
import 'package:musicproject/pages/podcasts.dart';
import 'package:musicproject/pages/privacy.dart';
import 'package:musicproject/pages/settings.dart';
import 'package:musicproject/pages/signin.dart';
//import 'package:musicproject/services/theme_services.dart';
// import 'package:musicproject/Theme_data/theme.dart';
import 'package:musicproject/songboxcall.dart';
//import 'Theme_data/Theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      /*Open this for dark mode light mode switch ->theme: ThemeData(backgroundColor: Colors.white,
            primaryColor: Colors.blue,
            brightness: Brightness.light),
        themeMode: ThemeService().theme,
        darkTheme: ThemeData(
            backgroundColor: Colors.black,
            primaryColor: Colors.black,
            brightness: Brightness.dark),*/
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const SongBoxCall());
      //home: DashBoardPage());
      home: Signin(),
      routes: {
        'mymusic': (context) => MyMusic(),
        'settings': (context) => SettingsScreen(),
        'podcasts': (context) => Podcasts(),
        'languages_screen': (context) => LanguagesScreen(),
        'about': (context) => AboutPage(),
        'privacy': (context) => Privacy(),
        'local': (context) => LocalFiles(),
        'favourites': (context) => FavouritesPage(),
        'downloads': (context) => DownloadsPage()
      },
    );
    //home: DashBoardK(data: Details.podcastsDetails));
  }
}

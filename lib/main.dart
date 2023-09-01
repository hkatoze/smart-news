import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:smart_news/api_services/api_services.dart';
import 'package:smart_news/models/articles_model.dart';
import 'package:smart_news/pages/company.dart';

import 'package:smart_news/pages/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String endpoint = "technologie";
  runApp(RestartWidget(
      child: MultiProvider(
    providers: [
      FutureProvider<List<Robotique>>.value(
        initialData: [],
        value: ApiServices().robotiqueArticle(),
      ),
      FutureProvider<List<Analysis>>.value(
          initialData: [], value: ApiServices().analysisArticle()),
      FutureProvider<List<Tech>>.value(
          initialData: [], value: ApiServices().techArticle()),
      FutureProvider<List<IA>>.value(
        initialData: [],
        value: ApiServices().iaArticle(),
      ),
      FutureProvider<List<IOT>>.value(
        initialData: [],
        value: ApiServices().iotArticle(),
      ),
      FutureProvider<List<Informatic>>.value(
        initialData: [],
        value: ApiServices().informaticArticle(),
      ),
      FutureProvider<List<Security>>.value(
        initialData: [],
        value: ApiServices().securityArticle(),
      ),
      FutureProvider<List<Firewall>>.value(
        initialData: [],
        value: ApiServices().firewallArticle(),
      ),
      FutureProvider<List<Phone>>.value(
        initialData: [],
        value: ApiServices().phoneArticle(),
      ),
    ],
    child: MyApp(),
  )));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<Robotique> robotique = Provider.of<List<Robotique>>(context);
    final List<Informatic> informatic = Provider.of<List<Informatic>>(context);
    final List<IA> ia = Provider.of<List<IA>>(context);
    final List<IOT> iot = Provider.of<List<IOT>>(context);
    final List<Phone> phone = Provider.of<List<Phone>>(context);
    final List<Firewall> firewall = Provider.of<List<Firewall>>(context);
    final List<Security> security = Provider.of<List<Security>>(context);
    final List<Analysis> analysis = Provider.of<List<Analysis>>(context);
    final List<Tech> tech = Provider.of<List<Tech>>(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
    
    
      home: SplashScreen(),
    );
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({required this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>()!.restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}

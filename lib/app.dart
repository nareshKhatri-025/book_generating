import 'package:book_generating_app/provider/auth_provider.dart';
import 'package:book_generating_app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screeType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => AuthProvider(),
          )
        ],
        child: MaterialApp(
          initialRoute: Routes.intial,
          routes: Routes.routes,
        ),
      ),
    );
  }
}

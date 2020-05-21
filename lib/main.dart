import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'utils/cons.dart';
import 'utils/providers.dart';
import 'vistas/login/login.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
         providers: [
           ChangeNotifierProvider(  create: (context) =>ProviderInfo(),),
           
         ],
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nviame',
          initialRoute: 'login',
          theme: new ThemeData(primaryColor: Constants.colorMoradoOscuro),
          //MAPA DE RUTAS
          routes: {
            'login': (context) => Login(),

            /* 
            'prueba'   :(BuildContext context) =>Concreto(),
            'config_concreto'   :(BuildContext context) =>ConfigConcreto(), */
          }),
    );
  }
}

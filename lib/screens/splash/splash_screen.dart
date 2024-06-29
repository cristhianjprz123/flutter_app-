import 'package:flutter/material.dart';
import 'package:workflow/screens/init_screen.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0x801C199B),
              Color(0x80B2E01E),
            ],
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Text(
                        '¡Hola!',
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Comienza a escanear ahora',
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage('assets/images/splash_1.png'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 50),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, InitScreen.routeName);
                            },
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0x801C199B),
                                    Color(0x80B2E01E),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Comenzar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Al continuar, indicas que aceptas nuestra política de privacidad.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

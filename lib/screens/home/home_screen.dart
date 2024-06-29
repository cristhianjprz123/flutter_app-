import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Scanner QR',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: Center(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/background1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(
                                  0.7), // Ajusta la opacidad según tus necesidades
                              Colors.black.withOpacity(
                                  0.3), // Ajusta la opacidad según tus necesidades
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 120,
                                    color: const Color(0xFFC8BBF3),
                                    child: const Center(
                                        child: Text(
                                      'Escanear',
                                      style: TextStyle(
                                          color: Color(0xFF2F2F2F),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 120,
                                    color: const Color(0xFF1C199B),
                                    child: const Center(
                                        child: Text(
                                      'Crear Codigo \n QR',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFFF2F2F2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/icons/Tutorial.svg',
                                ),
                                color: Colors.white,
                                iconSize: 50,
                                // Ajusta el tamaño según tus necesidades
                              ),
                              const Text(
                                'Tutorial',
                                style: TextStyle(
                                  color: Color(0xFF2A2A2A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/icons/help.svg',
                                ),
                                color: Colors.white,
                                iconSize:
                                    50, // Ajusta el tamaño según tus necesidades
                              ),
                              const Text(
                                'Ayuda',
                                style: TextStyle(
                                  color: Color(0xFF2A2A2A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
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

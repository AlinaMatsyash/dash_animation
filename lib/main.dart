import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff3278a1),
      //   centerTitle: true,
      //   title: const Text('Dash'),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'COME',
                    style: TextStyle(
                        fontSize: 60,
                        fontFamily: 'Font',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '  TO',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Font',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '  THE',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Font',
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const Text(
                'DART',
                style: TextStyle(
                    color: Color(0xff3278a1),
                    fontSize: 90,
                    fontFamily: 'Font',
                    fontWeight: FontWeight.w900),
              ),
              const Text(
                '-------- SIDE',
                style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Font',
                    fontWeight: FontWeight.w700),
              ),
              Container(
                height: 400,
                // color: Colors.red,
                //decoration: BoxDecoration(),
                child: RiveAnimation.asset('assets/dashF.riv'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

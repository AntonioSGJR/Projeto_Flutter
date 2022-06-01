// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class initialPage extends StatefulWidget {
  const initialPage({Key? key}) : super(key: key);
  @override
  State<initialPage> createState() => _initialPageState();
}

// ignore: camel_case_types
class _initialPageState extends State<initialPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[
                  Color.fromARGB(255, 86, 33, 102),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                ],
                    stops: [
                  0.0,
                  0.3,
                  0.6,
                  0.9,
                ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.repeated)),
          ),
          Align(
            alignment: Alignment(-0.80, 0.80),
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 100.0,
                    height: 40.0,
                    child: ElevatedButton(
                        onPressed: () {Navigator.pushNamed(context, '/login');},
                        child: const Text("Login"),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                        ),
                        ),
                SizedBox(
                    width: 100.0,
                    height: 40.0,
                    child: ElevatedButton(
                        onPressed: () {Navigator.pushNamed(context, '/cadastro');}, 
                        child: const Text("Cadastrar"),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )
                          )
                        ),
                        )),
              ],
            )),
          ),
          Positioned(
            bottom: 475.0,
            right: 0.0,
            top: 175.0,
            left: 0.0,
                child: Image.asset('../assets/vivo.png'),
          )
        ],
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

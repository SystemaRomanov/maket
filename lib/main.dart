import 'package:flutter/material.dart';

  void main() {
  runApp(const MyApp());
  }
  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(36)),
    borderSide: BorderSide(
        color:const Color(0xFFbbbbbb), width: 2));
    const  LinkTextStyle = TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)
);
      return MaterialApp(
        home: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg1.jpg"),
                fit: BoxFit.cover
                )
              ),
              width: double.infinity,
              child: Column(children: [
                SizedBox(height: 60,),
                SizedBox(width: 110, height: 84, child: Image(image: AssetImage("assets/dart-logo.png"),),),
                SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр номера телефона',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
                SizedBox(height: 20,),
                const SizedBox(width: 224,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Телефон',
                      ),
                    ),
                  ),
                SizedBox(height: 20,),
                const SizedBox(width: 224,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(width: 154,
                    height: 42, child:
                    ElevatedButton(
                        onPressed: () {},
                      child: Text('Войти'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                      ),
                    ),
                    )
                ),
                SizedBox(height: 20,),
                InkWell(child: const Text('Регистрация',
                style: LinkTextStyle,),
                    onTap: () {}),
                SizedBox(height: 20,),
                InkWell(child: const Text('Забыли пароль ?',
                    style: LinkTextStyle,),
                    onTap: () {}
                ),
              ],
        ),
            )
        ),
      );
    }
  }


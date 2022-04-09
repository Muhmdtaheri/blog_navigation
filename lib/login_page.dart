import 'package:blog_navigation/password_recovery.dart';
import 'package:flutter/material.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP ورود به حساب سیگنال های',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Image(
                  image: AssetImage('images/welcome.png'),
                ),
                SizedBox(
                  height: 120,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(200.0, 40.0),
                      side: BorderSide(color: Colors.black, width: 2.0),
                      primary: Colors.black),
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      BlogScreen(),
                    );
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(200.0, 43.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateToBlogPage(
                      context,
                      PasswordRecovery(),
                    );
                  },
                  child: Text('فراموشی رمز عبور'),
                  style: TextButton.styleFrom(primary: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }
}

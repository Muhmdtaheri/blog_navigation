import 'package:blog_navigation/custom_widgets/post_widget.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({Key? key}) : super(key: key);

  final List<Widget> listBlogWidget = [
    getBlogPost(imageName: 's.png', title: 'سیگنال خرید سیف مون'),
    getBlogPost(imageName: 'r.png', title: 'سیگنال خرید ریپل'),
    getBlogPost(imageName: 'a.png', title: 'سیگنال خرید آلکمی پی'),
    getBlogPost(imageName: 'c.png', title: 'سیگنال خرید کازموس'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'vipاخبار و سیگنال های ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

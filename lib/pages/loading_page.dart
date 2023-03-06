import 'package:flutter/material.dart';
import 'package:iist_bus/pages/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
  //_LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>{
  @override
  void initState(){
    super.initState();
    navigatohome();
  }

  void navigatohome() async{
    Future.delayed(const Duration(seconds: 5),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Image.asset(
          "assets/images/loading.png",

        )
      ),
    );
  }
}


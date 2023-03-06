import 'package:flutter/material.dart';
import 'package:iist_bus/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.blue,
              child: SingleChildScrollView(
                    child: Column(
                          children: [
                                Image.asset("assets/images/icon1.png",),
                                SizedBox(
                                      height: 125,
                                      width: double.infinity,

                                      child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, MyRoutes.mapping);
                                            },
                                            style: const ButtonStyle(
                                              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                              foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                                            ),
                                            child: const Text("Bus No 1",
                                                  textAlign: TextAlign.left,),
                                      ),
                                ),

                                SizedBox(
                                  height: 125,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, MyRoutes.mapping);
                                    },
                                    style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                                    ),
                                    child: const Text("Bus No 2",
                                      textAlign: TextAlign.left,),
                                  ),
                                ),


                            SizedBox(
                              height: 125,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, MyRoutes.mapping);
                                },
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                                ),
                                child: const Text("Bus No 2",
                                  textAlign: TextAlign.left,),
                              ),
                            ),
                            SizedBox(
                              height: 125,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, MyRoutes.mapping);
                                },
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                                ),
                                child: const Text("Bus No 2",
                                  textAlign: TextAlign.left,),
                              ),
                            ),


                            SizedBox(
                              height: 125,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, MyRoutes.mapping);
                                },
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                                ),
                                child: const Text("Bus No 2",
                                  textAlign: TextAlign.left,),
                              ),
                            ),


                            SizedBox(
                              height: 125,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, MyRoutes.mapping);
                                },
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                                ),
                                child: const Text("Bus No 2",
                                  textAlign: TextAlign.left,),
                              ),
                            ),
                          ],
                    ),
              )

              )



        );

  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      height: 50,
                      width: 50,
                      image: AssetImage(
                        'images/logo.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Maintenance',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xff203142),
                          ),
                        ),
                        Text(
                          'Box',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 22, fontFamily: 'Rubik Medium',color: Color(0xffF9703b)),
                        ),
                      ],
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xff203142),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    'The Login UI',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik',
                      color: Color(0xff4c5980),
                    ),
                  ),
                ),
              const SizedBox(height: 20,),
              SizedBox(
                child: Column(
                  children:  [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: 'Email',
                          hintStyle: const TextStyle(fontFamily: 'Rubik Medium'),
                          fillColor: const Color(0x0fff8f9a),
                          filled: true,
                            prefixIcon:const Icon(Icons.alternate_email,color:Color(0xff323f48),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:const BorderSide( color: Color(0xffE4E7Eb)),
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration:  InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(fontFamily: 'Rubik Medium'),
                            fillColor: const Color(0x0fff8f9a),
                            filled: true,
                            prefixIcon:const Icon(Icons.password,color:Color(0xff323f48),
                            ),
                            suffixIcon:const Icon(Icons.visibility),
                            enabledBorder: OutlineInputBorder(
                                borderSide:const BorderSide( color: Color(0xffE4E7Eb)),
                                borderRadius: BorderRadius.circular(12)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.only(right: 16.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           SizedBox(
                            child : GestureDetector(child: const Text('Forgot Password?',style: TextStyle(fontSize: 16,fontFamily: 'Rubik',decoration: TextDecoration.underline),))
                    ),
                         ],
                       ),
                     )
                  ],
                ),
              ),
              const SizedBox(height: 100,),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xffF9703b),
                      borderRadius:BorderRadius.circular(12)
                    ),
                    child:const Center(
                      child: Text(
                        'Login In',
                        style: TextStyle(fontSize: 24,
                            fontFamily: 'Rubik Medium',
                          color: Colors.white,
                      )
                  ),
                    ),),
                ),
              const SizedBox(height: 10,),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text("Don't Have an account ?",style: TextStyle(fontSize: 16,fontFamily: 'Rubik',color: Colors.black),),
                      const SizedBox(width: 10,),
                      GestureDetector(child: const Text("Sign Up",style: TextStyle(fontSize: 16,fontFamily: 'Rubik',color:  Color(0xffF9703b),),)),
                    ],
                  )
                )
              ],
            ),
          ),
        ));
  }
}

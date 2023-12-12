import 'package:flutter/material.dart';
import 'package:morse/theme.dart';
import 'package:morse_code_translator/morse_code_translator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   var dat='';
   MorseCode  meroMorseCode = MorseCode();
 final TextEditingController textdata = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mytheme().primary,

      //   appBar: AppBar(
      //   title: Text("Home"),
      // ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text('Home',style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.white),),
                )),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Input data:-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),

                      TextFormField(
                        autofocus: false,
                        controller: textdata,
                        keyboardType: TextInputType.text,
                        onSaved: (value) {
                          setState(() {
                            dat= meroMorseCode.deCode(value!);

                          });
                          textdata.text = value!;
                        },
                        onChanged: (value){
                          setState(() {
                            dat= meroMorseCode.deCode(value);

                          });
                             },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.email),
                            contentPadding: EdgeInsets.fromLTRB(
                                20, 15, 20, 15),
                            hintText: "Enter code",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),

                      ),
                      SizedBox(height: 20,),
                      Text('Output data:-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),

                      Text(dat.toString(),style: TextStyle(fontSize: 20,letterSpacing: 3,wordSpacing: 3,fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

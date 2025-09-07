import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please enter the value in INR",
                  hintStyle: TextStyle(color: Colors.black38),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black38,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("Button clicked");
                },
                style:  const ButtonStyle(
                  elevation: WidgetStatePropertyAll(10),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity,50)),
                  textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  //by default it gives RoundedRectangleBorder so making is less
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10))))
                ),
                child: Text("Convert"),
              ),
            ),
            // MaterialButton(
            //   color: const Color.fromARGB(255, 124, 177, 204),
            //   padding: EdgeInsets.all(10),
            //   shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(5)),
            //   onPressed: (){

            // },
            //   child: Text("Convert",style: TextStyle(
            //     color: Colors.white,
            //   ),)
            // )
          ],
        ),
      ),
    );
  }
}

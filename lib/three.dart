import 'package:finalprojet/four.dart';
import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  var name = TextEditingController();
  var name1 = TextEditingController();
  var name2 = TextEditingController();
  bool naame = false;
  bool naame1 = false;
  bool naame2 = false;

  var check = true;
  var elvat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sign up"),
        ),
        toolbarHeight: 150,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
        ),
      ),
      body:
          // Padding(
          // padding: const EdgeInsets.all(15),
          //child:
          SingleChildScrollView(
        child: Column(
          children: [
            // Divider(height: 80,color: Colors.white,),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "number",
                  errorText: naame ? "error1" : null,
                  border: OutlineInputBorder(),
                ),
                controller: name,
              ),
            ),
            // Divider(height: 15,color: Colors.white,),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  errorText: naame1 ? "error1" : null,
                  border: OutlineInputBorder(),
                ),
                controller: name1,
              ),
            ),
            //Divider(height: 15,color: Colors.white,),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  errorText: naame2 ? "error1" : null,
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                controller: name2,
              ),
            ),
            Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 2, top: 2, right: 2, bottom: 2),
                  child: CheckboxListTile(
                    value: check,
                    onChanged: (value) {
                      setState(() {});
                      check = value;
                    },
                    title: Text("Remember me"),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Divider(height: 20,color: Colors.white,),
                Container(
                  padding:
                      EdgeInsets.only(left: 2, top: 2, right: 2, bottom: 2),
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 2, top: 2, right: 2, bottom: 2),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        name.text.isEmpty ? naame = true : naame = false;
                        name1.text.isEmpty ? naame1 = true : naame1 = false;
                        name2.text.isEmpty ? naame2 = true : naame2 = false;
                      },
                      child: Text("CONTINUE"),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Divider(height: 5,color: Colors.white,),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Four()),
                          (route) => false);
                    });
                  },
                  child: Text(
                    "Login With Facebook",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // ),
    //
    //  ),
    //  );
  }
}

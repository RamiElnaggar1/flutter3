import 'package:finalprojet/Dragon/model.dart';
import 'package:finalprojet/ui/Ui.dart';
import 'package:flutter/material.dart';

class DragonScreen3 extends StatefulWidget {

  @override
  _DragonScreen3State createState() => _DragonScreen3State();
}

class _DragonScreen3State extends State<DragonScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(title: Text("DragonScreen 2"),),
      body: Center(
        child: FutureBuilder<List<Model>>(
          future:Ui().ui() ,
          builder: (context,snapshot){
             if(snapshot.connectionState!=ConnectionState.done){
              return CircularProgressIndicator();
            }else if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context , index){
                  Model model=snapshot.data[index];
                  return
                    Column(

                      children: [

                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            // color: Colors.red,
                            width: 435,
                            height: 170,
                            child:

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child:   Row(
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [

                                  Image.network("${model.type}"

                                  ),

                                  Column(
                                    children: [
                                      Text("Dragon 2"),
                                      Divider(height: 10,),
                                      Text("type:cargo"),
                                      Divider(height: 30,),
                                      ElevatedButton

                                        (onPressed: (){
                                        setState(() {

                                        });
                                      }, child: Text("${model.type}"),),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            //  child: Text("roo",style: TextStyle(fontSize: 30),),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,

                              ),

                              borderRadius: BorderRadius.circular(25),

                            ),

                          ),

                        ),

                      ],

                    );

                },

              );
            }else{
              return Text("no data");
            }

          },

        ),
      ),

    );
  }
}

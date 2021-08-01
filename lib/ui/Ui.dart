import 'package:dio/dio.dart';
import 'package:finalprojet/Dragon/model.dart';

class Ui{


Dio dio;
BaseOptions baseOptions=BaseOptions(baseUrl: "https://api.spacexdata.com/v4/");
Ui(){
  dio=Dio(baseOptions);

}
Future<List<Model>>ui()async{
Response response=await dio.get("dragons");
//print("${response.data}");
List<Model> Dragon=[];
for(var i in response.data){
  Dragon.add(Model.model(i));

}
  return Dragon;
}


}
class Model{
  String _name;
  String _type;
  bool _active;
  Model.model(Map map){

    _type=map["type"];
    _name=map["name"];
    _active=map["active"];

  }

  bool get active => _active;

  String get type => _type;

  String get name => _name;
}
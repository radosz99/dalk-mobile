import 'networking.dart';

const kApiURL = 'https://fa771a338477.ngrok.io/api/v1/';

class ApiHandler{
  Future<dynamic> getMVPInfo() async{
    var url = '$kApiURL/player/mvp';
    NetworkHelper networkHelper = NetworkHelper(url: url);

    var mvpInfo = await networkHelper.getData();
    return mvpInfo;
  }
}
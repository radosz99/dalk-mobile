import 'networking.dart';

const kApiURL = 'https://0dfe6232a6b4.ngrok.io/api/v1/';

class ApiHandler{
  Future<dynamic> getMVPInfo() async{
    var url = '$kApiURL/player/mvp';
    NetworkHelper networkHelper = NetworkHelper(url: url);

    var mvpInfo = await networkHelper.getData();
    return mvpInfo;
  }
}
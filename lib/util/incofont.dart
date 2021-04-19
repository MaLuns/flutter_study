import 'dart:convert';
import 'dart:io';

void main() {
  print('xxxx');
  IconFont(key: 'font_2300204_sfsdkd9j7e').getCss();
}

class IconFont {
  String key; // iconfont 项目id
  final String url = 'at.alicdn.com';
  final String iconfix = 'icon-'; // 图标前缀
  final String fontFamily = 'IconFont'; //  pubspec.yaml 申明的字体类型
  final String outPathIcon = '../icon/iconfont.dart';
  final String outPathSvg = '../icon/svg.dart';
  final String outPathTTF = '../../asset/fonts/iconfont.ttf';

  IconFont({this.key}) : assert(key == null);

  Future<String> _http(String type) async {
    var httpClient = new HttpClient();
    var uri = new Uri.https(url, '/t/' + key + '.' + type);
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(Utf8Decoder()).join();
    return responseBody;
  }

  void getCss() {
    _http('css').then((value) {
      var reg = RegExp('.$iconfix(.*?):(.|\\n)*?"\\\\(.*?)";');
      reg.allMatches(value).forEach((element) {
        print(element.group(3));
        //print(element.group(2));
        print(element.group(1));
      });
      //print(value);
    });
  }
}

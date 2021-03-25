// iconfont 转 fluter icon 脚本
const http = require('http');
const fs = require('fs');
const path = require('path');
const key = 'font_2300204_sfsdkd9j7e' // iconfont 项目id
const url = 'http://at.alicdn.com/t/' + key;
const iconfix = 'icon-'; // 图标前缀
const fontFamily = 'IconFont' //  pubspec.yaml 申明的字体类型
const outPath = '../icon/iconfont.dart';
const outPathTTF = '../../asset/fonts/iconfont.ttf';

http.get(url + '.css', function (res) {
    res.setEncoding('utf8');
    let rawData = '';
    res.on('data', (chunk) => { rawData += chunk; });
    res.on('end', () => {
        let str = [];
        let reg = new RegExp(`.${iconfix}(.*?):(.|\\n)*?"\\\\(.*?)";`, 'gm')
        while ((arr = reg.exec(rawData)) !== null) {
            let name = arr[1].replaceAll('-', '_');
            let codePoint = arr[3];
            str.push(`  static const IconData ${name} = IconData(0x${codePoint}, fontFamily: _family);`);
        }

        fs.writeFile(path.resolve(__dirname, outPath), getDartIconStr(str, fontFamily), (err) => {
            if (err) {
                console.log(err)
            } else {
                console.log('转换成功!')
            }
        })
    });
})


http.get(url + '.ttf', function (res) {
    let stream = fs.createWriteStream(path.resolve(__dirname, outPathTTF));
    res.pipe(stream).on('close', function () {
        console.log('ttf 字体文件下载完成')
    })
})

function getDartIconStr(arr, fontFamily) {
    return `import 'package:flutter/widgets.dart';

/// @date: ${new Date()}
/// @description  代码由程序自动生成。请不要对此文件做任何修改。

class IconList {
  static const String _family = '${fontFamily}';
${arr.join('\n')}
}
`;
}

String.prototype.replaceAll = function (str, str2) {
    return this.split(str).join(str2)
}

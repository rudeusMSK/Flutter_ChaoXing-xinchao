# flutter_application_buoi1 (mình nhầm src buổi 3 với 1 nên 1 sẽ là 3 còn 3 sẽ là mẹ nha (mà mẹ là nhất nhoa) !)
(2024)
ở bài này chúng ta sẽ chỉ tạo sơ 1 cái giao diện sịn sịn:
</br>
đó là in chữ hello world lên màn hình. :)) sịn chưa !
___ 
tại file `helloworld.dart` ở thư mục `lib` như src
tại đó sẽ là chứ phần giao diện cơ bản để in chữ hello world lên màn hình.
___
```Dart
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Hello World !'),
    );
  }
}
```
công việc đầu tiên của bạn đơn giản là khai báo thư viện `material.dart` để chúng ta có thể sử dụng các widget tạo giao diện.
</br>
```Dart
import 'package:flutter/material.dart';
```
tiếp theo, các chúng ta sẽ tạo 1 class tên là `HelloWorld` hoặc bất cứ tên j bạn thích
-⁠ ＜(´⌯  ̫⌯`)＞ ! hê hê
và cho class đó extends StatelessWidget ! ( ngoài ``StatelessWidget`` chúng ta còn ``StatefullWidget`` )
```Dart
class HelloWorld extends StatelessWidget
```
và tạo cho nó 1 constructor và đoạn code của bạn lúc này nhìn tổng thể sẽ trong như mồn lèo này -⁠ ฅ^•ﻌ•^ฅ :
```Dart
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});
}
```
lúc này bạn thấy class của `HelloWorld` đang bị báo lỗi ! (do bạn bị miss 1 cái @override) !
<div style="text-align: center;">
  <img src="https://github.com/rudeusMSK/Flutter_ChaoXing-xinchao/assets/160387470/42c40d93-f317-4f90-97e6-8bbab512a15d" alt="image" style="display: block; margin: auto; width: 300px;"/>
</div>

___

<p> ( Assskk dụng cho VsCode còn android mình ko biết :)) nhưng kiểu j nó cũng gợi ý xừ thôi à )</p>
<p>lúc này bạn thực hiện thao tác sau:
nhấn vào biểu tượng bóng đèn 💡 chọn create missing override như hình:</p>

<div style="text-align: center;">
  <img src="https://github.com/rudeusMSK/Flutter_ChaoXing-xinchao/assets/160387470/8ae50422-e7f0-4910-8d67-bafc8c69e63c" alt="image" style="display: block; margin: auto; width: 300px;"/>
</div>

___

và ta đa code bạn lúc này sẽ hết lỗi và tổng thể code như sau
```Dart
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
```
bạn xóa dòng 
```Dart
    // TODO: implement build
    throw UnimplementedError();
```
và code đoạn code sau !
<p>ฅ^•ﻌ•^ฅ code bạn sẽ trong như mòe: </p>

```Dart
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Hello World !'),
    );
  }
}
```
đại khái ý nghĩa của đoạn code trên là in ra màn hình chữ hello world thôi.
<p>

  lúc này bạn hãy quay về lại thư mục: `lib\main.dart` và tìm dòng code sau: 

</p>

```Dart
void main() {
  runApp(const MyApp());
}
```

bạn hãy thay đổi `MyApp()` thành `HelloWorld()`
<p>bé nào lỗi thì nhớ im bọt rứ ! zí zụ src của tus á:</p>

```Dart
import 'package:flutter_application_buoi3/helloworld.dart';
```
<p>sau đó code bạn sẽ như thế này:</p>

```Dart
void main() {
  runApp(const HelloWorld());
}
```
như vậy là bạn đã có thể in chữ hello world lên màn hình ròi á  ＜(´⌯  ̫⌯`)＞ bật máy ảo hay web j á lên chơi u !
<p>nó sẽ như này khi chạy (tus mở web á cho nhẹ mấy pé mở máy ảo hay máy rêu zì nha :)) )</p>

<div style="text-align: center;">
  <img src="https://github.com/rudeusMSK/Flutter_ChaoXing-xinchao/assets/160387470/c19560e7-f5f6-48d6-9638-09e4cda3feb8" alt="image" style="display: block; margin: auto; width: 300px;"/>
</div>

<p>ơ zời nó xấu wá ! -⁠ ＜(´⌯  ̫⌯`)＞ ! nên chúng ta sẽ nâng cấp 1 tí tăng lv lên tí !</p>
</br>
nó sẽ như voài !
</br>
chữ hello world sẽ nằm zửa và mình thêm cái app bar cho nó choén ! ~ kư kư
</br>
ờ mà thêm app bar thì mình xóa cái nhãn debug luôn cho đẹp ha.

# Nâng lv lên xíu cho zui 🐸🐸🐸 ~ ộc ộc !

bạn tạo 1 file mới hoặc sài luôn file hello wơ . dart cũng đc  !
</br>
tus tạo mới rứ!
</br>
bạn làm i_chan hồi nãy đổi code trong phần MaterialApp như sau:
file tus sẽ đặt tên là buoi1 còn class lùm `Baitapbuoi1` nhoa.
</br>
code nó sẽ như mòe:

```Dart
import 'package:flutter/material.dart';

// StatelessWidget hay StatefullWidget ?
class BaitapBuoi1 extends StatelessWidget {
  const BaitapBuoi1({super.key});

// ctrl+. để tạo widget nhanh
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // SafeArea là đại diện cho phần màn hình trừ đi phần taskbar của i phô (phần hiện pin, sim việt teo, thông báo... đồ á)
      home: SafeArea(
        // Scaffold là là đại diện cho phần màn hình
        child: Scaffold(
          // app bar đây nha.
          // (vì sao khứa này nằm đây? vì app bar nằm trong màn huềnh á ! mà màn hình là khứa Scaffold chứ còn khứa nào âu !)
          appBar: AppBar(
            backgroundColor: Colors.blueAccent, // bát râu có màu hường -⁠ ＜(´⌯  ̫⌯`)＞
            title: const Text('hê hê'), // tiêu zề 'hê hê'
          ),
          body: const Center(
            //  child -  dễ hiểu là widget layout con á tìm hiểu thêm các layout khác ở đây nha: https://docs.flutter.dev/ui/widgets/layout
            child: Text('Hello = xin chèo !')
            ),
        ),
      ),
      // xóa nhãn debug chơi chơi
      debugShowCheckedModeBanner: false,
    );
  }
}
```

</br>

giải thích tus comment ròi chỉ cần nắm 1 số thứ sau:

</br>

+ cái giao diện tổ chức theo dạng cây ! 

</br>

  các widget sẽ đc Flutter tự comment cho dễ nhìn và có dấu  `,`  để add thêm mấy cái widget cùng lv như ở trên là  `debugShowCheckedModeBanner`  với pé  `home`

</br>

+ các bạn có thể click vào 1 widget vd như `Center` để xem nó có cểu con sờ tănk `const` ko ! 

 </br>

  nếu có các bạn thêm `const` như trên để ko bị báo lỗi và ngược lại.

</br>

+ các bạn sài IDE `VsCode` có thể sài nhanh shortcut: `ctrl` + `.` coi shortcut tại [đây](https://codewithandrea.com/articles/vscode-shortcuts-extensions-settings-flutter-development/).

</br>

xong ! của tui nha đổi tên thành `Baitapbuoi1()` ròi chạy thoai.
kết quả sẽ như này:

<div style="text-align: center;">
  <img src="https://github.com/rudeusMSK/Flutter_ChaoXing-xinchao/assets/160387470/f2fa9e7a-6cf3-448d-824c-f283565dfb39" alt="image" style="display: block; margin: auto; width: 300px;"/>
</div>

<p> hết buổi 1 á - ฅ^•ﻌ•^ฅ  ~ bye !</p>









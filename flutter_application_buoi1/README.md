# flutter_application_buoi1
ở bài này chúng ta sẽ chỉ tạo sơ 1 cái giao diện sịn sịn mà mội Dev đều gặp:
</br>
đó là in chữ hello world lên màn hình.
___ 
tại file `helloworld.dart` ở thư mục `lib`
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
và tạo cho nó 1 constructor và đoạn code của bạn lúc này nhìn tổng thể sẽ trong như lào -⁠ ฅ^•ﻌ•^ฅ :
```Dart
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});
}
```
lúc này bạn thấy class của `HelloWorld` đang bị báo lỗi ! (do bạn bị miss 1 cái @override) !
___
<p>Asss dungj cho VsCode còn android mình ko biết :)) nhưng kiểu j nó cũng gợi ý xừ thôi à</p>

<div style="text-align: center;">
  <img src="https://github.com/rudeusMSK/Flutter_ChaoXing-xinchao/assets/160387470/42c40d93-f317-4f90-97e6-8bbab512a15d" alt="image" style="display: block; margin: auto; width: 500px;"/>
</div>

<p>lúc này bạn thực hiện thao tác sau:
nhấn vào biểu tượng bóng đèn 💡 chọn create missing override như hình:</p>

<div style="text-align: center;">
  <img src="https://github.com/rudeusMSK/Flutter_ChaoXing-xinchao/assets/160387470/8ae50422-e7f0-4910-8d67-bafc8c69e63c" alt="image" style="display: block; margin: auto; width: 500px;"/>
</div>

___







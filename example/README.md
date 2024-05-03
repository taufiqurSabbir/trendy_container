
# Trendy Containers

Trendy container package lets you add a beautiful gradient container to your Flutter app.
Just like Plug and play

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  trendy_container: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:trendy_container/trendy_container.dart';
```

## Example
There are a number of properties that you can modify:

-  height
- width
- title
- subtitle
- gradient (color1 and color2)
- centerTitle
- titleTextStyle
- subtitleTextStyle
- padding
- isCircle
- isRectangle

<hr>

<table>
<tr>
<td>

```dart
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TrendyContainer(
          title: 'This is title',
          subTitle: 'This is subtitle',
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          subtitleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          isRectangle: true,
          padding: EdgeInsets.all(10),
          height: 150,
          width: 300,
          centerTitle: true,
          color1: Colors.red,
          color2: Colors.orange,
        ),
      ),
    );
  }
}
```

</td>
<td>
<img  src="https://raw.githubusercontent.com/taufiqurSabbir/nice_container/main/image/1.png"  alt="">
</td>
</tr>
</table>

<table>
<tr>
<td>

```dart
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TrendyContainer(
          title: 'This is title',
          subTitle: 'This is subtitle',
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          subtitleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          padding: EdgeInsets.all(10),
          height: 150,
          width: 300,
          centerTitle: true,
          color1: Colors.red,
          color2: Colors.orange,
        ),
      ),
    );
  }
}
```

</td>
<td>
<img  src="https://raw.githubusercontent.com/taufiqurSabbir/nice_container/main/image/2.png"  alt="">
</td>
</tr>
</table>


<table>
<tr>
<td>

```dart
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TrendyContainer(
          title: 'This is title',
          subTitle: 'This is subtitle',
          titleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          subtitleTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
          isRectangle: true,
          padding: EdgeInsets.all(10),
          height: 150,
          width: 300,
          isCircle: true,
          centerTitle: true,
          color1: Colors.red,
          color2: Colors.orange,
        ),
      ),
    );
  }
}
```

</td>
<td>
<img  src="https://raw.githubusercontent.com/taufiqurSabbir/nice_container/main/image/3.png"  alt="">
</td>
</tr>
</table>

## Next Goals

- [] Add onTap for functions.
  Now, you can specify the onTap and specify a function.

- [x] Change font and color style for text.
  Change color by specifying `textcolor` and `subtitlecolor` properties.

- [] Add more containers to the package.
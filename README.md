# blurred

An easy way to blur your widgets and images.

![blurred example](https://user-images.githubusercontent.com/43412083/94337331-49ed6d80-0007-11eb-8c43-c8d8424c0169.gif)

## Usage

```dart
Blurred(
  Text(
    "Hello World!",
    style: TextStyle(
      fontSize: 72,
    ),
  ),
  blurValue: 3,
)
```

Output:

![Hello World](https://user-images.githubusercontent.com/43412083/94337163-1231f600-0006-11eb-9acd-689a2fb15e65.png)

---

Check the [example](./example/lib/main.dart) for `BlurredImage` example

---

## Acrylic

![Acrylic](https://user-images.githubusercontent.com/43412083/97078611-eb69de00-160a-11eb-8140-f1bd14fa4c4a.png)

To easily create a container with an acrylic effect.

### Example

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acrylic Header',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 10, 30, 1),
      body: Stack(
        children: [
          ListView.builder(
            itemBuilder: (_, __) => ListTile(
              leading: Icon(Icons.ac_unit_rounded, size: 30),
              title: Text('Lorem Ipsum'),
            ),
          ),
          SizedBox(
            height: 80,
            child: Acrylic(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterLogo(size: 40),
                    SizedBox(width: 10),
                    Text('Acrylic Header', style: TextStyle(fontSize: 40)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
```

### Output

![Acrylic Example](https://user-images.githubusercontent.com/43412083/97078282-e4da6700-1608-11eb-937d-27c3347c8638.gif)

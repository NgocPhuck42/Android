import 'package:flutter/material.dart';


class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group1",
      home: MaterialBasic(),
    );
  }
}

class MaterialBasic extends StatefulWidget {
  const MaterialBasic({Key? key}) : super(key: key);

  @override
  _MaterialBasicState createState() => _MaterialBasicState();
}

class _MaterialBasicState extends State<MaterialBasic> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang chủ"),
        leading: Icon(Icons.home, size: 30),
        actions: [
          IconButton(onPressed: (){
            var snack = SnackBar(content: Row(
              children: [
                Icon(Icons.alarm, color: Colors.white,),
                Text("Xin chào"),
            ],
            ));
            ScaffoldMessenger.of(context).showSnackBar(snack);
          }, icon: Icon(Icons.add_box_rounded),),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.login)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://scontent.fdad1-2.fna.fbcdn.net/v/t1.6435-9/157555055_1147228445726920_8351619052045648295_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=6hs9L4DjN0sAX9RXBLJ&_nc_ht=scontent.fdad1-2.fna&oh=3e58663f263a573da122481c455d887a&oe=616695A7"),
            Image.network("https://scontent.fdad2-1.fna.fbcdn.net/v/t1.6435-9/156454289_1147228392393592_689434289217933002_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=m0VBgMgWiWQAX8Wx94a&tn=QL_6AMumjQaD1z_b&_nc_ht=scontent.fdad2-1.fna&oh=9b728826809a76102e83a262bebf265b&oe=616643A3"),
            Text("Đếm: $count", style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.amber,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              IconButton(
                onPressed: (){

              }, icon: Icon(Icons.call, size: 50, color: Colors.blue,)),
              IconButton(
                  onPressed: (){

                  }, icon: Icon(Icons.place, size: 50, color: Colors.red,))
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
            print(count);
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}




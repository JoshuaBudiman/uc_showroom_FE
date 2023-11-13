part of 'pages.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pelanggan"),
        actions: [
          IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddCustomer()));
      }, icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        child: 
          ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return 
                Text("Pelanggan ${index+1}")
                ;
              },
            ),
        ),
    );
  }
}
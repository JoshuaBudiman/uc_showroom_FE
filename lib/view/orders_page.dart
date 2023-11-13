part of 'pages.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
        actions: [
          IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddOrder()));
      }, icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return 
                Text("Order ${index+1}")
                ;
              },
            ),
      ),
    );
  }
}
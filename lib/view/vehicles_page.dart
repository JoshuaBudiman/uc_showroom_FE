part of 'pages.dart';

class VehiclesPage extends StatefulWidget {
  const VehiclesPage({super.key});

  @override
  State<VehiclesPage> createState() => _VehiclesPageState();
}

class _VehiclesPageState extends State<VehiclesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kendaraan"),
        actions: [
          IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddVehicles()));
      }, icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return 
                Text("Kendaraan ${index+1}")
                ;
              },
            ),
      ),
    );
  }
}
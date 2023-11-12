part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final screen = [
    VehiclesPage(),
    CustomersPage(),
    OrdersPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screen[selectedIndex],
      //Bottom Navigation for Menu
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
          
        },
        items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.airport_shuttle), label: 'Kendaraan'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Pelanggan'),
        BottomNavigationBarItem(icon: Icon(Icons.shop_sharp), label: 'Order'),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      ),
    );
  }
}
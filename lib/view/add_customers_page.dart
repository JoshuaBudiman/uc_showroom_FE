import 'package:flutter/material.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Pelanggan"),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama",
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Alamat"
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "No. Telepon"
                ),
              ),
              SizedBox(height: 12,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Id Card"
                ),
              ),
              SizedBox(height: 12,),
              ElevatedButton(onPressed: (){}, child: 
              Text(
                "Tambahkan"
              ))
            ]),
        ),
    );
  }
}
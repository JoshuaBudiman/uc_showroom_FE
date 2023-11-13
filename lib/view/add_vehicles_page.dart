import 'package:flutter/material.dart';

class AddVehicles extends StatefulWidget {
  const AddVehicles({super.key});

  @override
  State<AddVehicles> createState() => _AddVehiclesState();
}

class _AddVehiclesState extends State<AddVehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Kendaraan"),
        centerTitle: true,
      ),
    );;
  }
}
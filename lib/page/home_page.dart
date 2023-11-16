import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style:TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              CustomMenu(imageAsset: 'circle', title: 'Circle'),
              CustomMenu(imageAsset: 'square', title: 'Square'),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset: 'triangle', title: 'Triangle'),
              CustomMenu(imageAsset: 'octagon', title: 'Octagon'),
              CustomMenu(imageAsset: 'rectangle', title: 'Rectangle'),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset: 'pentagon', title: 'Hexagon'),
              CustomMenu(imageAsset: 'hexagon', title: 'Hexagon'),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
          color: Color(0xff282c34),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Image.asset(('assets/'+imageAsset+".png"), height: 200),
              Text(title, style:TextStyle(color: Colors.white)),
            ],
          ),
      ),
    );
  }
}


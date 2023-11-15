import 'package:flutter/material.dart';
import 'package:week7/employee.dart';
import 'package:week7/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final employee=ModalRoute.of(context)!.settings.arguments as Employee;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(employee.toString()),
           const SizedBox(
            height: 10,
          ),
        ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(builder:(context)=> const Page1())
                );
            
                
              },
              child: const Icon(Icons.navigate_before, size: 50))
              
        ],
      )),
    );
  }
}

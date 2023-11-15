import 'package:flutter/material.dart';
import 'package:week7/employee.dart';
import 'page2.dart';
import 'package:flutter/services.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _controllerHoures = TextEditingController();
  final TextEditingController _controllerRate = TextEditingController();

  @override
  void dispose() {
    _controllerHoures.dispose();
    _controllerRate.dispose();
    super.dispose();
  }

  void openPage2(){
    try{
    int hours=int.parse(_controllerHoures.text.toString());
    double rate=double.parse(_controllerRate.text.toString());
    Navigator.of(context).push(
      MaterialPageRoute(builder:(context)=>const Page2(),
      settings: RouteSettings(arguments: Employee(hours,rate))),
    );
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Wrong Arguments')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: TextField(
                controller: _controllerHoures,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter Houres"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: 200,
              child: TextField(
                controller: _controllerRate,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Enter Rate"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed:openPage2,
              child: const Icon(Icons.navigate_next, size: 50))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class TextFormWidget_ extends StatelessWidget {
const TextFormWidget_({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container();
  }
}

class TextFormWidget{

  TextFormField textForm({label, hint, required name}){
    
    return TextFormField(
        decoration: const InputDecoration(
          //label: const Text('label'),
          hintText: 'hint text',
          labelText:'label text'
        ),

    );
  }

}

final textFormW = TextFormWidget();
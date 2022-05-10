import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget
{
  final TextEditingController mycontroller;
  SearchBar(this.mycontroller);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: TextFormField(
                  controller: mycontroller,
                  decoration:const InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.red,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    ),
                    hintText: 'City Name',
                    
                  ),
                  
                  

                ),
    );
  }
  
}
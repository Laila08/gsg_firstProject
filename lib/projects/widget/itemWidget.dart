import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget{
  final String text;
  final String image;
  var link;
  ItemWidget({required this.text,required this.image,required this.link});
  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsetsDirectional.only(top: 25,start: 25),
      height: 130,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.3))
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder:
                  (v){return widget.link;}
              )
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 19),
          child: Column(
            children: [
              Image.asset(widget.image,height: 50,width: 50,),
              SizedBox(height:10,),
              Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ],
          ),
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firstproject/projects/widget/MuslimWidget.dart';
import 'MuslimProject.dart';
class beforePrayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        automaticallyImplyLeading:false,
        centerTitle: true,
        title: MuslimTitleWidget(title:'أذكار الصلاة'),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder:
                  (v){return MuslimProject();}
              )
          );
        },icon: Icon(Icons.arrow_forward_ios))],
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF83BD75), Color(0xFF4B8673),Color(0xFF05595B)
                  ])
          ),
        ),
      ),
      body: MuslimContentWidget(),
    );
  }
}

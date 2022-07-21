import 'package:url_launcher/url_launcher.dart';

import 'MuslimProject.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatelessWidget{
  Future<void> _launchInBrowser() async {
    //launchUrl(Uri.parse("tel:0599436111"),);
    launchUrl(Uri.parse("sms:0599436111"),);
    //{throw 'Could not launch ';}
  }
  sendMessageByWhatsapp(String phone,String message){
    String url = "whatsapp://send?=$phone&text=${Uri.encodeFull(message)}";
    launchUrl(Uri.parse(url));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70.0,horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('الاعدادات',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
              SizedBox(height: 60,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 40),
                //margin: EdgeInsetsDirectional.only(bottom: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios,color: Colors.grey.withOpacity(0.3),size: 14,),
                          Spacer(),
                          GestureDetector(
                              onTap: (){
                                sendMessageByWhatsapp('972599436111','hello laila');
                              },
                              child: Text('مشاركة التطبيق   ',style: TextStyle(fontSize: 18),)),
                          Icon(Icons.share,color: Colors.blue,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios,color: Colors.grey.withOpacity(0.3),size: 14,),
                          Spacer(),
                          GestureDetector(
                              onTap: (){
                                sendMessageByWhatsapp('972599436111','hello ');
                              },
                              child: Text('تقييم التطبيق   ',style: TextStyle(fontSize: 18),)),
                          Icon(Icons.reviews_outlined ,color: Colors.orange,),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:SizedBox(height: 55,child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF83BD75), Color(0xFF4B8673),Color(0xFF05595B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              //tileMode: TileMode.clamp,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showUnselectedLabels: false,
            currentIndex: 1,
            selectedFontSize: 13,

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: InkWell(child: Icon(Icons.home,size: 22,),onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (v){
                    return MuslimProject();
                  })
                );
              },),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings,size: 20,),label: 'الاعدادات'),
            ],
          ),
        ),
      )),
    );
  }

}
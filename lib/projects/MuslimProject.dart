import 'package:firstproject/projects/settingScreen.dart';
import 'package:firstproject/projects/widget/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'wakingUp.dart';
import 'moon.dart';
import 'sleep.dart';
import 'sun.dart';
import 'AfterPrayer.dart';
import 'beforePrayer.dart';
import 'quran.dart';
import 'mosqe.dart';
import 'prayer.dart';
import 'quranicPrayer.dart';
class MuslimProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF4B8673), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(90, 100, 100,0),
              child: Text('أذكار المسلم',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 20,bottom: 10),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          ItemWidget(text: 'أذكار المساء',image: 'assets/images/photo_2022-07-02_13-53-18.jpg',link: moon(),),
                          ItemWidget(text: 'أذكار الصباح',image: 'assets/images/sun.png',link: sun(),),
                        ],
                      ),
                      Row(
                        children: [
                          ItemWidget(text: 'أذكار النوم',image: 'assets/images/sl.png',link: sleep(),),
                          ItemWidget(text: 'أذكار الاستيقاظ',image: 'assets/images/clock.png',link: wakingUp(),),
                        ],
                      ),
                      Row(
                        children: [
                          ItemWidget(text: 'أذكار بعد الصلاة',image: 'assets/images/3858880.png',link:AfterPrayer() ,),
                          ItemWidget(text: 'أذكار الصلاة',image:'assets/images/3858918.png',link: beforePrayer(),),
                        ],
                      ),
                      Row(
                        children: [
                          ItemWidget(text: 'ختم القرآن ',image: 'assets/images/quran.png',link: quran(),),
                          ItemWidget(text: 'أذكار المسجد',image:'assets/images/mosq.png',link: mosqe(),),
                        ],
                      ),
                      Row(
                        children: [
                          ItemWidget(text: 'أدعية الأنبياء',image:'assets/images/5003018.png',link: prayer(),),
                          ItemWidget(text: 'أدعية قرآنية',image: 'assets/images/4264576.png',link: quranicPrayer(),),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:SizedBox(height: 55,child: Container(
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
          currentIndex: 0,
          selectedFontSize: 13,

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 20,),label: 'الأذكار'),
            BottomNavigationBarItem(icon:InkWell(child: Icon(Icons.settings),onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (v){
                  return SettingScreen();
                })
              );
            },),label: ''),
          ],
        ),
      )),
    );
  }
}

import 'package:firstproject/projects/MuslimProject.dart';
import 'package:flutter/material.dart';

class MuslimTitleWidget extends StatelessWidget{
  final String title;
  MuslimTitleWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontWeight: FontWeight.bold),);
  }
}
class MuslimContentWidget extends StatefulWidget{
  @override
  State<MuslimContentWidget> createState() => _MuslimContentWidgetState();
}

class _MuslimContentWidgetState extends State<MuslimContentWidget> {
  int count1 = 1;
  int count2 = 3;
  int count3 = 3;
  int count4 = 1;
  int count5 = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0,20.0,0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Visibility(
              visible:count1!=0,
              child: Container(
                height: 280,
                margin: EdgeInsetsDirectional.only(bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلاَ يَؤُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ'
                          ,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: Container(
                        width: 310,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            count1--;
                            if(count1==0&&count2==0&&count3==0&&count4==0&&count5==0){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:
                                      (v){return MuslimProject();}
                                  )
                              );
                            }
                            setState(() {
                            });

                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(this.count1.toString(),style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text('التكرار ',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible:count2!=0,
              child: Container(
                height: 160,
                margin: EdgeInsetsDirectional.only(bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ'
                          ,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: Container(
                        width: 310,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            count2--;
                            if(count1==0&&count2==0&&count3==0&&count4==0&&count5==0){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:
                                      (v){return MuslimProject();}
                                  )
                              );
                            }
                            setState(() {
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(this.count2.toString(),style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text('التكرار ',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible:count3!=0,
              child: Container(
                height: 180,
                margin: EdgeInsetsDirectional.only(bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('قُلْ  أَعُوذُ  بِرَبِّ  النَّاسِ   مَلِكِ  النَّاسِ   إِلَٰهِ النَّاسِ   مِن شَرِّ الْوَسْوَاسِ   الْخَنَّاسِ   الَّذِي يُوَسْوِسُ    فِي صُدُورِ النَّاسِ   مِنَ الْجِنَّةِ  و َالنَّاسِ'
                          ,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: Container(
                        width: 310,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            count3--;
                            if(count1==0&&count2==0&&count3==0&&count4==0&&count5==0){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:
                                      (v){return MuslimProject();}
                                  )
                              );
                            }
                            setState(() {
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(this.count3.toString(),style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text('التكرار ',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: count4!=0,
              child: Container(
                height: 280,
                margin: EdgeInsetsDirectional.only(bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('أَصْـبَحْنا وَ أَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُولهُ الحَمْـد، و هُوَ على كلّ شَيءٍ قدير، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَ خَـيرَما بَعْـدَه ، وَ أَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَ شَرِّ ما بَعْـدَه، رَبِّ أَعـوذُ بِكَ مِنَالْكَسَـلِ وَ سـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَ عَـذابٍ في القَـبْر'
                          ,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: Container(
                        width: 310,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            count4--;
                            if(count1==0&&count2==0&&count3==0&&count4==0&&count5==0){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:
                                      (v){return MuslimProject();}
                                  )
                              );
                            }
                            setState(() {
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(this.count4.toString(),style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text('التكرار ',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: count5!=0,
              child: Container(
                height: 280,
                //margin: EdgeInsetsDirectional.only(bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ۚ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ ۗ مَن ذَا الَّذِي يَشْفَعُ عِندَهُ إِلَّا بِإِذْنِهِ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلَّا بِمَا شَاءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ ۖ وَلاَ يَؤُودُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِيُّ الْعَظِيمُ'
                          ,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 30,
                      child: Container(
                        width: 310,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            count5--;
                            if(count1==0&&count2==0&&count3==0&&count4==0&&count5==0){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:
                                      (v){return MuslimProject();}
                                  )
                              );
                            }
                            setState((){

                            });
                          },
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(this.count5.toString(),style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text('التكرار ',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}




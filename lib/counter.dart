// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _Counter();
}

class _Counter extends State<Counter> {
  int counter=0,index=0,round=0;
  List<String>werd=[
    'سبحان الله ',
    'الحمد لله ',
    'الله اكبر'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("فَذَكِّرْ إٍنْ نَفِعَتْ الذِّكْرَى",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        flexibleSpace: Image.asset('assets/images/appbar.jpg',fit: BoxFit.cover,),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/background.jpg',fit: BoxFit.cover,width: double.infinity,),
             Padding(padding: EdgeInsets.only(left: 95,top: 160),
                 child:  Column(
             mainAxisAlignment:MainAxisAlignment.start,
             children:[
               Text(werd[index],style: TextStyle(fontSize: 30,color: Colors.white),) ,
               SizedBox(
                 height: 20,
               ),
             Container(
                 width: 170,
                 height: 50,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(5),
                       bottomLeft: Radius.circular(5),
                       bottomRight:Radius.circular(20),
                     ),
                     color: Colors.white
                 ),
                 child:Center(
                   child:  Text("عدد التسبيحات",style: TextStyle(color: Color(0xffdc143c),fontSize: 25,fontWeight: FontWeight.w700),),
                 )
             ),
               SizedBox(
                 height: 20,
               ),
                  Text("$counter",style: TextStyle(fontSize: 30,color: Colors.white),),
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap:() {
                      setState(() {
                        _increasement();
                      });
                    },
                    child: Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(color: Colors.white,width: 2),
                        ),
                        child: Center(
                          child: Text("اضغط",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
                        )
                      ),
                  ) ,
               SizedBox(
                 height: 20,
               ),
          ]

      )

    ),
          Padding(padding: EdgeInsets.only(left: 10,top: 500),
            child:  Row(
              children: [
                TextButton(
                    onPressed: (){
                  setState(() {

                    _reset();
                  });
                },
                    child:Text("البدء من جديد",style: TextStyle(color: Colors.white,fontSize: 20),)),
                SizedBox(
                  width: 100,
                ),
                Text("$round : رقم الدورة",style: TextStyle(color: Colors.white,fontSize: 20),)
              ],
            ) ,
          )
          ],
        ),
      ),
    );
  }
  void _increasement(){
    counter++;
    if(counter==34){
      counter=0;
      index++;
      if(index==3){
        round++;
        index=0;
      }
    }

}
void _reset(){
    counter=0;
    index=0;
    round=0;
}
}


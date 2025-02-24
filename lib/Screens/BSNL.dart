import 'package:flutter/material.dart';

class BSNL extends StatelessWidget {
  const BSNL({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Profile(),
              Offer(),
              SizedBox(height: 20,),
              Quick_Actions()
            ],
          ),
        ),
      )
    );
  }

  // Quick Actions
  Widget Quick_Actions(){
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Quick Actions", style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 2, 69, 123), fontWeight: FontWeight.w800),),
              Row(
                children: [
                  Action_button()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Action_button(){
    return Column(

      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(241,242,246,255),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
            child: Icon(Icons.receipt_long_sharp),
          ),
        ),
        Text("Recharge", style: TextStyle(fontSize: 12),)
      ],
    );
  }

 
  //Offer Widget
  Widget Offer(){
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(216,233,249,255)
          // gradient: LinearGradient(
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          //   colors: [
          //   const Color.fromARGB(255, 163, 204, 238),
          //   Colors.white
          // ])
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("App Exclusive Offer", style: TextStyle(fontSize: 19, color: const Color.fromARGB(255, 2, 69, 123), fontWeight: FontWeight.bold),),
                  Text("Applicable on recharges above Rs.249.", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
                  SizedBox(height: 4,),
                  Text("Check Now >>", style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 2, 69, 123), fontWeight: FontWeight.bold)),
                  SizedBox(height: 6,),
                  Text("T&C apply", style: TextStyle(fontSize: 7),)
                ],
              ),
              Row(
                children: [
                  Text("2", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.orange),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 2, 69, 123)),),
                      SizedBox(height: 3,),
                      Text("% OFF", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 2, 69, 123)),)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        
      ),
    );
  }


  // Profiles Widgets
  Widget Profile(){
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        // color: Colors.orange
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          Colors.orange,
          Colors.white
        ])  ,
        
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Profile_Info(),
          ),
          // SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Data_pack(),
          ),
          
        ],
      ),
    );
  }

  Widget Data_pack(){
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              pack(),
              SizedBox(height: 5,),
              options(),
              SizedBox(height: 25,),
              Container(
            width: double.infinity,
            height: 34,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                const Color.fromARGB(255, 245, 170, 165),
                Colors.white
              ]),
              color: const Color.fromARGB(255, 245, 161, 155),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.warning_amber),
                  SizedBox(width: 2,),
                  Text("Uh-Oh! Your plan has expired  Recharge now.", style: TextStyle(color: Colors.red),),
                  Spacer(),
                  Text("Recharge", style: TextStyle(color: Colors.blue),),
              
                ],
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }

  Widget options(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Buton(Colors.orange, Colors.white, "View Pack", Colors.orange),
        SizedBox(width: 25,),
        Buton(Colors.orange, Colors.orange, "Recharge", Colors.white)
      ],
    );
  }

  Widget Buton(border_color, inner_color, name, text_color){
    return IntrinsicWidth(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: border_color),
          borderRadius: BorderRadius.circular(30),
          color: inner_color
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Center(child: Text(name, style: TextStyle(fontSize: 15, color: text_color, fontWeight: FontWeight.bold),),),
        ),
      ),
    );
  }

  Widget pack(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
              // image: DecorationImage(image: AssetImage('assets/net.png'))
            ),
            child: Transform.rotate(
                angle: -1.5,
              child: Icon(Icons.compare_arrows, color: Colors.black,)),
          ),
          SizedBox(width: 5,),
          Container(
            width: 22,
            height: 6,
            color: Colors.red,
          ),
          SizedBox(width: 5,),
          Container(
            width: 3,
            height: 30,
            color: Colors.grey,
          ),
          SizedBox(width: 8,),
          Column(
            children: [
              Text("0 Pack", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),),
              Text("Expired", style: TextStyle(color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }

  Widget Profile_Info(){
    return Container(
      width: double.infinity,
      height: 60,
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                children: [
                  Text("Good Afternoon, prasad tnvd", style: TextStyle(fontFamily: "roboto", color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(width: 20,),
                  Icon(Icons.menu_open_rounded, color: Colors.black,)

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("9618566951", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(width: 8,),
                  SizedBox(
                    height: 25,
                    child: ElevatedButton(onPressed: (){
                    
                    }, child: Text("Prepaid", style: TextStyle(color: Colors.orange),)),
                  )
                ],
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add_outlined, size: 35,),
          )
        ],
      ),
    );
  }

}
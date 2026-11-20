import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class RoleDecide extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    double sh1 = MediaQuery.of(context).size.height;
    double sw1 = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(136, 235, 235, 235),
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColors.primaryDark,
          ),
        ),
        title: Text(
          'Welcome to Kaamly',
          style: AppFonts.titleLarge.copyWith(
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 100, 95),
                  // border: Border.all(),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: sw1 * 1,
                height: sw1 * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: sw1 * 0.125,
                        color: Colors.amberAccent,
                      ),
                      SizedBox(height: sw1 * 0.02),
                      Text(
                        "Good help.",
                        style: TextStyle(
                          fontSize: sw1 * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Right at your doorstep.",
                        style: TextStyle(
                          fontSize: sw1 * 0.08,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: sw1 * 0.08),
              Text(
                "How will you use Kaamly?",
                style: TextStyle(
                  fontSize: sw1 * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: sw1 * 0.03),
              Text(
                "One app. A better day for everyone",
                style: TextStyle(color: const Color.fromARGB(249, 67, 64, 64)),
              ),
              SizedBox(height: sw1 * 0.08),
              Container(
                width: sw1 * 1,
                height: sw1*0.25,
                decoration: BoxDecoration(color: const Color.fromARGB(237, 207, 207, 207),borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.home_outlined, size: sw1 * 0.1),
                      SizedBox(width: sw1 * 0.03,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: sw1*0.05),),
                          Text("Find trusted help for your home"),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
               SizedBox(height: sw1 * 0.05),
              Container(
                width: sw1 * 1,
                height: sw1*0.25,
                decoration: BoxDecoration(color: const Color.fromARGB(235, 255, 255, 255),borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.design_services, size: sw1 * 0.1),
                      SizedBox(width: sw1 * 0.03,),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: sw1*0.05),),
                          Text("Find trusted help for your home"),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: sw1 * 0.05),
             GestureDetector(
              child: Container(
                width: sw1 * 1,
                height: sw1*0.18,
                decoration: BoxDecoration(color:AppColors.primaryDark ,borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Continue as Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: sw1*0.05,color:Colors.white),),
                        ],
                      ),  
                      Spacer(),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ),
              ),
             ),
             Spacer(),
             Text("Protected with end-to-end encryption")
            ],
          ),
        ),
      ),
    );
  }
}

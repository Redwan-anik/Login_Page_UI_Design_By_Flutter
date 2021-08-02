import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final controller = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(

        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(child: Text("Welcome to Login Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
              SvgPicture.asset("assets/icons/signup.svg",
                height: 200),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: controller ,
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(color:Colors.green),
                    //labelText: "Your Full name",
                    //labelStyle: TextStyle(color: Colors.black),
                    //fillColor: Colors.blueGrey,
                    //filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color:Colors.teal)
                    ),
                     // border: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(20)),
                      //border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.redAccent
                      )
                    ),
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:2,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(color:Colors.green),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.teal)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.redAccent
                        )
                    ),
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.mail),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: controller2 ,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color:Colors.green),
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Colors.teal)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.redAccent
                        )
                    ),
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.lock),
                    ),
                   )
                  ),
                ),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(365, 52),
                    shadowColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  child: Text("Login")),
            ],
          ),
        ),
      ),

    );
  }
}

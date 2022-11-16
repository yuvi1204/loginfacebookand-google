import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_final_test/Signin/signin.dart';
import 'package:flutter_final_test/widget/kidslist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<listkids> images = [
    listkids(
      'assets/images/speling.png',"Spelling"),
    listkids(
      'assets/images/maths.png',"Maths"),
    listkids(
      'assets/images/drawing1.jpg',"Drawing"),
    listkids(
      'assets/images/puzzle.jpg',"Puzzle"),
    listkids(
      'assets/images/song.jpeg',"Song"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splacescreen.png"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken))),
                  
      child: Scaffold(
        appBar:PreferredSize(
                  preferredSize: Size.fromHeight(30.0),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                     elevation: 0,
            backgroundColor: Colors.transparent,
             leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),);  },
                    child:IconButton(
                  icon:ImageIcon(AssetImage("assets/images/ic_menu.png"),size: 30,),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                )
                     ),
                  )
              ),
              drawer:Drawer(
        
          child: ListView(
             padding: EdgeInsets.zero,
            children: [
               
            DrawerHeader(
             //    margin: EdgeInsets.zero,
      //  padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color:  Color(0xffff4c02),
                 /* borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(30.0),
                     topRight: Radius.circular(30.0),
                  )*/
              ),
              child: Column(
                children: [
                  Container(
                   // padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topRight,
                    height: 5,
                    child: Icon(Icons.clear, color: Colors.white,),
                         
         
                  ),

                  Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                           image: DecorationImage(
                            image: AssetImage("assets/images/kohli.jpg",),
                            
                             fit: BoxFit.fill
                           )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             Text('Yuvi Solanki',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            Text('yuvisolanki166@gmail.com',style: TextStyle(color: Colors.white,fontSize: 10),),

                          ]

                            ),

                        ),
                      )
                    ],

                  ),
                ],
              ),
            
               
                   
          //      Text('John Doe',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
             //    Text('john.doe@gmail.com',style: TextStyle(color: Colors.white,fontSize: 16),),
                
             /*  currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/john.jpeg"),
                 ),*/
                
                 ),
                
               ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/subscription.png"),size: 20,)),
                title: Text('Subscript')   
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/payment.png"),size: 20,)),
                title: Text('Payment History')   
              ),
               ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/setting.png"),size: 20,)),
                title: Text('Setting')   
              ),
               ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/update_icon.png"),size: 20,)),
                title: Text('Update')   
              ),
               ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/feedback_icon.png"),size: 30,)),
                title: Text('Feedback')   
              ),
                  ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/help_support.png"),size: 30,)),
                title: Text('Help and Support')   
              ),
               ListTile(
                leading: IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/images/logout.png"),size: 30,)),
                title: Text('Logout')   
              ),
            ],
            

          ),

         ),
        
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
       
        //  height: 50,
        
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Color(0xfffa74e3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)

            ),
          ),
          child: Row(          
            children: [                          
              Expanded(
                
                child: TextField(
                  maxLines: 1,
              
                  decoration: InputDecoration(
                    prefix:Icon(Icons.search,color: Colors.black),
                      fillColor: Color(0xfff2f3f7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Search contact or dail no",
                      filled: true,
                     ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 33,
                width: 25,
                  decoration: BoxDecoration(
                image: DecorationImage(
            
              image: AssetImage("assets/images/dial_pad.png"),
              fit: BoxFit.cover,
              )),
              )
             
            ],
          ),
        ),
      ),
             

        ),
        
        body: Container(
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
           
       
              children: [
              
                SizedBox(
                  height: 10,
                ),
             
                Padding(
                  padding: const EdgeInsets.only(left: 240),
                  child: Container(
                         alignment: Alignment.topRight,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                     
                    child: ListView.separated(
                      
                        shrinkWrap: true,
                      //  padding: EdgeInsets.symmetric(horizontal: 30),
                      
                        itemBuilder: (context, index) {
                          return MyKidsList(
                            pi: images[index],

                          );
                          
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 5,
                          );
                        
                        },
                        
                        itemCount: 5),
                       
                  ),
                ),
          
               
              ],
            ),
            
          )),
           
        ),
      ),

    );
    
  }
}
class listkids {
  String imagesUrl;
   String name;

  listkids(
    this.imagesUrl,
    this.name,);

}
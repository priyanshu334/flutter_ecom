import 'package:ecom_app/components/bottom_nav_bar.dart';
import 'package:ecom_app/pages/cart_page.dart';
import 'package:ecom_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) =>
           IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
           }, icon:Padding(
            
             padding: const EdgeInsets.only(left: 12.0),
             child: Icon(Icons.menu, color: Colors.black,),
           ))
          
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(child: Image.asset('lib/images/logo.png',color: Colors.white,)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color:Colors.grey[800]
                
              ),
            ),
          const  Padding(
              padding:  EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text('HOME',style: TextStyle(color: Colors.white),),
              ),
            ),
            const  Padding(
              padding:  EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
                title: Text('ABOUT',style: TextStyle(color: Colors.white),),
              ),
            ),
            const  Padding(
              padding:  EdgeInsets.only(left:25.0,bottom: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text('Logout',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

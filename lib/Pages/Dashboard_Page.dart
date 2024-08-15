import 'package:ecommerce_app_admin_panel/Auth/Auth_service.dart';
import 'package:ecommerce_app_admin_panel/Models/dashboard_model.dart';
import 'package:ecommerce_app_admin_panel/Pages/Login_Page.dart';
import 'package:ecommerce_app_admin_panel/Providers/Item_Provider.dart';
import 'package:ecommerce_app_admin_panel/Providers/OrderProvider.dart';
import 'package:ecommerce_app_admin_panel/Providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../CustomWidgets/DashboardItemView.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const String routeName = "/";
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    Provider.of<itemProvider> (context,listen: false).getAllBrands();
    Provider.of<itemProvider> (context,listen: false).getAllItems();
    Provider.of<UserProvider> (context,listen: false).getAllUsers();
    Provider.of<orderProvider> (context,listen: false).getAllOrders();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Page"),
        actions: [
          IconButton(onPressed: (){
            AuthService.logOut().then((value) => context.goNamed(LoginPage.routeName));
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: dashboardList.length,
          itemBuilder: (context , index){
            final model = dashboardList[index];
            return DashboardItemView(
              model:model ,
              onPress: (routeName){
                context.goNamed(routeName);
              },
            );
          }),
      );

  }
}


import 'package:ecommerce_app_admin_panel/Auth/Auth_service.dart';
import 'package:ecommerce_app_admin_panel/Pages/BrandPage.dart';
import 'package:ecommerce_app_admin_panel/Pages/Dashboard_Page.dart';
import 'package:ecommerce_app_admin_panel/Pages/Description_Page.dart';
import 'package:ecommerce_app_admin_panel/Pages/ItemsDetails_Page.dart';
import 'package:ecommerce_app_admin_panel/Pages/OrderPage.dart';
import 'package:ecommerce_app_admin_panel/Pages/ViewItem_Page.dart';
import 'package:ecommerce_app_admin_panel/Pages/add_items.dart';
import 'package:ecommerce_app_admin_panel/Providers/user_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'Pages/Login_Page.dart';
import 'Pages/OrderDetailPage.dart';
import 'Providers/Item_Provider.dart';
import 'Providers/OrderProvider.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => itemProvider()),
    ChangeNotifierProvider(create: (context) => orderProvider()),
    ChangeNotifierProvider(create: (context) => UserProvider()),

  ]
  ,
  child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: EasyLoading.init(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     routerConfig: _router,
    );
  }

  final _router = GoRouter(
    initialLocation: DashboardPage.routeName,
      redirect: (context,state){

      if(AuthService.CurrentUser == null ){
        return LoginPage.routeName;
      }

      return null;

      },
      routes: [
        GoRoute(
          name: LoginPage.routeName,
          path:LoginPage.routeName,
          builder: (cotext,state)=> const LoginPage()
        )
,
        GoRoute(
            name: DashboardPage.routeName,
            path:DashboardPage.routeName,
            builder: (cotext,state)=> const DashboardPage(),
            routes: [
              GoRoute(
                  name: additemPage.routeName,
                  path:additemPage.routeName,
                  builder: (cotext,state)=> const additemPage()
              ),
              GoRoute(
                  name: ViewItemPage.routeName,
                  path:ViewItemPage.routeName,
                  builder: (cotext,state)=> const ViewItemPage(),
                routes: [
                  GoRoute(
                      name:ItemsDetailsPage.routename,
                      path:ItemsDetailsPage.routename,
                      builder: (cotext,state)=> ItemsDetailsPage(id: state.extra! as String,),
                    routes: [
                      GoRoute(
                          name:ItemDescriptionPage.routename,
                          path:ItemDescriptionPage.routename,
                          builder: (cotext,state)=>  ItemDescriptionPage(id: state.extra! as String,)
                      )

                    ]
                  ),
                ]
              ),
              GoRoute(
                  name: BrandPage.routerName,
                  path:BrandPage.routerName,
                  builder: (cotext,state)=> const BrandPage()
              ),
              GoRoute(
                  name: orderPage.routename,
                  path:orderPage.routename,
                  builder: (cotext,state)=> const orderPage(),
                routes: [
                  GoRoute(
                      name: OrderDetailPage.routeName,
                      path:OrderDetailPage.routeName,
                      builder: (cotext,state)=> OrderDetailPage(orderId: state.extra! as String)
                  ),
                ]
              ),
            ]
        )     ]);
}


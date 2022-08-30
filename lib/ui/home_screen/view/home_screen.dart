import 'package:flutter/material.dart';
import 'package:http_services2/ui/home_screen/controller/home_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("httpServices"),
      ),
      body: ListView.builder(
        itemCount: homeController.homeResponseList!.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(homeController.homeResponseList![index].id.toString()),
        ),
      ),
    );
  }
}

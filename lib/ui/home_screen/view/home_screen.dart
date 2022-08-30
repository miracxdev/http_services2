import 'package:flutter/material.dart';
import 'package:http_services2/ui/home_screen/controller/home_screen_controller.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final _controller = Provider.of<HomeController>(context, listen: false);
    _controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    /// [HomeController] classından Provider kullanarak nesne ürettik.
     final controller = context.watch<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("httpServices"),
      ),
      body: controller.homeResponseList!.isEmpty ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: controller.homeResponseList!.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(controller.homeResponseList![index].id.toString()),
        ),
      ),
    );
  }
}

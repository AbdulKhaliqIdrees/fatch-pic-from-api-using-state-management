import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:state_management_api_1/controllers/product_controller.dart';
import 'package:state_management_api_1/server/product_server.dart';
import 'package:state_management_api_1/views/product_sktach.dart';

class MyHome extends StatelessWidget {
  final productcontroller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API with State Management"),
        backgroundColor: Colors.teal,
      ),
      body: Obx(() {
        if (productcontroller.loading.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        } else
          return StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              itemCount: productcontroller.productlist.length,
              itemBuilder: (context, index) {
                return ProductSktach(productcontroller.productlist[index]);
              },
              staggeredTileBuilder: (index) {
                return StaggeredTile.fit(1);
              });
      }),
    );
  }
}

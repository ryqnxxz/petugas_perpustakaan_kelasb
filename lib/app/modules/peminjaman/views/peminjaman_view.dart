import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PeminjamanView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: controller.obx(
            (state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: Colors.grey[200],
              child: ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.blue,
                ),
                title: Text(
                  "${state[index].book}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Peminjam ${state[index].bookId}",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}

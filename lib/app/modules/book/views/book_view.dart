import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petugas_perpustakaan_kelasb/app/routes/app_pages.dart';

import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BookView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_BOOK),
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: controller.obx(
            (state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.blue,
                ),
                title: Text(
                  "${state[index].judul}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Penulis: ${state[index].penulis}",
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () {
                  // Add any action on tap if needed
                },
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

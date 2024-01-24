import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AddBookView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: controller.judulController,
                decoration: InputDecoration(
                  labelText: "Judul",
                  hintText: "Masukkan Judul",
                ),
                validator: (value) {
                  if (value!.length < 5) {
                    return "Judul tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.penulisController,
                decoration: InputDecoration(
                  labelText: "Penulis",
                  hintText: "Masukkan Penulis",
                ),
                validator: (value) {
                  if (value!.length < 5) {
                    return "Penulis tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.penerbitController,
                decoration: InputDecoration(
                  labelText: "Penerbit",
                  hintText: "Masukkan Penerbit",
                ),
                validator: (value) {
                  if (value!.length < 5) {
                    return "Penerbit tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: controller.tahunTerbitController,
                decoration: InputDecoration(
                  labelText: "Tahun Terbit",
                  hintText: "Masukkan Tahun Terbit",
                ),
                validator: (value) {
                  if (value!.length < 3) {
                    return "Tahun Terbit tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                onPressed: () {
                  controller.post();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                ),
                child: Text(
                  "Tambah",
                  style: TextStyle(fontSize: 18),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

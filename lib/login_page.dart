import 'package:flutter/material.dart';
import 'package:project_edspert/biodata_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',
        style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/Memphis-Grizzlies-logo.png'),
            Column(
              children: [
                Text("Selamat Datang",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold),),
                Center(child: Text("Selamat Datang di Aplikasi WidyaEdu",
                  style: TextStyle(
                      color: Colors.grey
                  ),)),
                Center(child: Text("Aplikasi Latihan dan Konsultasi Soal",
                  style: TextStyle(
                      color: Colors.grey
                  ),)),
              ],
            ),
            Column(
              children: [
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      elevation: 7
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/google_logo.jpg', height: 30),
                            const SizedBox(width: 8),
                            Text('Masuk dengan Google')
                          ]),
                    )
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(
                        builder: (context) => const BiodataPage())),
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 7,
                        backgroundColor: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/Memphis-Grizzlies-logo.png',height: 30),
                          const SizedBox(width: 8),
                          Text('Masuk dengan Apple',
                            style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[250],
    );
  }
}

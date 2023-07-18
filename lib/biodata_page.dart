import 'package:flutter/material.dart';
import 'package:project_edspert/login_page.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Biodata',
        style: TextStyle(fontWeight: FontWeight.bold))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/Memphis-Grizzlies-logo.png'),
              radius: 100 ,
            ),
            Column(
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 24
                  ),
                ),
                Text(
                  'My Name is Yoga Christanto',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 24
                  ),
                ),
                Text(
                  'Just Ordinary Human',
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+6282318999021',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "yogaarenbe10@gmail.com",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text(
              '"Stay Consistent and Work Hard"',
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic
              ),
            ),
            ElevatedButton(onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(
                    builder: (context) => const LoginPage())),
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
                      Text('Back',
                        style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

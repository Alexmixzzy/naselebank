import 'package:flutter/material.dart';

class IntroPage1x extends StatelessWidget {
  const IntroPage1x({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //color: Colors.blue[400],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg/un16.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://googleflutter.com/sample_image.jpg'),
                    fit: BoxFit.fill),
              ),
              //child: Image.asset('assets/images/illustrations/blooming.png'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/illustrations/blooming.png'),
                      fit: BoxFit.fill),
                ),
                //child: Image.asset('assets/images/illustrations/blooming.png',),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "youli ahna sading polak sjshd sisooshdj jsgd  shdgdhd shdgdd fdhdj sfdhd fshdf sfdhdhd fdhdd shdhdhd shdhhd hdhdhd zhdhdhd zhdhdhd zdhd zhdhdhd zhdhdhd zhsdhdhd zhdhdhdh dshdhdhdh dhddhdh dhdhdhd dhhdhd dhdhdhd dhdhhd dhdhdhd",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: (() {}),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

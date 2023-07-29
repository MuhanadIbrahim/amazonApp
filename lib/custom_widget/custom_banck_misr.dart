import 'package:flutter/material.dart';

class banckMisrRow extends StatelessWidget {
  const banckMisrRow({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 89),
      child: Container(
        width: double.infinity,
        height: 75,
        color: const Color(0xffeaeaea),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enjoy 0% interest on installments',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'up to 12 months with Banque Misr Credit Cards',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 19.0),
              child: Image.asset(
                'assets/Banque_Misr.svg.png',
                width: 80,
                height: 60,
              ),
            )
          ],
        ),
      ),
    );
  }
}


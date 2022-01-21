import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/model.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Welcome? authors = Provider.of<ApiGetter>(context).data;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: authors != null
          ? SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 120,),
                if (authors.res!.result == 'Negative') ...[
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: SvgPicture.asset(
                        "assets/denied.svg",
                        height: size.height * 0.35,
                        width: size.height * 0.25,
                      ),
                    ),
                  ),
                ] else if (authors.res!.result == 'Positive') ...[
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: SvgPicture.asset(
                        "assets/accepted.svg",
                        height: size.height * 0.35,
                        width: size.height * 0.25,
                      ),
                    ),
                  ),
                ],
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                  '${authors.res!.result}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'Your Text is',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                  '${authors.tweet}',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                    )),
              ]),
          )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

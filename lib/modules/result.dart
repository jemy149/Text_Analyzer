import 'package:flutter/material.dart';
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
    Welcome? authors = Provider.of<ApiGetter>(context).data;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: authors != null
          ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (authors.res!.result == 'Negative') ...[
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/denie.png')),
                ),
              ] else ...[
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/accept.png')),
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
            ])
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

import 'package:flutter/material.dart';

class CreateOnboard extends StatelessWidget {
  const CreateOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/organize");
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: Text("Skip"),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: Image.asset("images/create.png"),
              ),
              SizedBox(
                height: 51,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Color.fromRGBO(175, 175, 175, 1),
                          ),
                          width: 26,
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Colors.white,
                          ),
                          width: 26,
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Color.fromRGBO(175, 175, 175, 1),
                          ),
                          width: 26,
                          height: 4,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 30),
                child: Center(
                  child: Text(
                    "Create daily routine",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 107),
                child: Center(
                  child: Text(
                    "In Uptodo you can create your personalized routine to stay productive",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 70, 24, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/manage");
                      },
                      child: Text("Back"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(136, 117, 255, 1),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(90, 48),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/organize");
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 136,
                    height: 5,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

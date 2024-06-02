import 'package:flutter/material.dart';

class OrgonizeOnboard extends StatelessWidget {
  const OrgonizeOnboard({Key? key}) : super(key: key);

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
                    Navigator.pushNamed(context, "/welcome");
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: Text("Skip"),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Center(
                child: Image.asset(
                  "images/organize.png",
                  width: 257,
                  height: 310,
                ),
              ),
              SizedBox(
                height: 64,
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
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 42),
                child: Center(
                  child: Text(
                    "Organize your tasks",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 114),
                child: Center(
                  child: Text(
                    "You can organize your daily tasks by adding your tasks into separate categories",
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
                padding: EdgeInsets.fromLTRB(25, 0, 24, 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/create");
                      },
                      child: Text("Back"),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(136, 117, 255, 1),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(150, 48),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/welcome");
                      },
                      child: Text("GET STARTED"),
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

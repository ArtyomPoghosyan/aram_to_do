import 'package:flutter/material.dart';

class ManageOnboard extends StatelessWidget {
  const ManageOnboard({Key? key}) : super(key: key);

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
                    Navigator.pushNamed(context, "/create");
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: Text("Skip"),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: Image.asset("images/manage.png"),
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
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 42),
                child: Center(
                  child: Text(
                    "Manage your tasks",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 35, 107),
                child: Center(
                  child: Text(
                    "You can easily manage all of your daily tasks in DoMe for free",
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
                padding: EdgeInsets.fromLTRB(25, 80, 24, 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/");
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
                        Navigator.pushNamed(context, "/create");
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

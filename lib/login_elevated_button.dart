import 'package:flutter/material.dart';

class LoginElevatedButton extends StatelessWidget {
  String label;
  Color labelColor;
  Color bgColor;
  BuildContext Pagecontext;
  Widget pageName;
  LoginElevatedButton(
      {required this.label,
      required this.labelColor,
      required this.bgColor,
      required this.Pagecontext,
      required this.pageName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(Pagecontext,
                        MaterialPageRoute(builder: (context) => pageName));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bgColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    alignment: Alignment.center,
                  ),
                  child: Text(
                    label,
                    style: TextStyle(color: labelColor, fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

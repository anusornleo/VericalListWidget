import 'package:flutter/material.dart';
import 'package:listwidget/BottomModalSheet/CouponModel.dart';
import 'package:listwidget/BottomModalSheet/CouponTile.dart';

//  define type callback
typedef void IntCallback(int id);

class BottomSheetPanel extends StatefulWidget {
  // callback fn define
  final IntCallback onChanged;

  BottomSheetPanel({Key key, @required this.onChanged}) : super(key: key);

  @override
  _BottomSheetPanelState createState() => _BottomSheetPanelState();
}

class _BottomSheetPanelState extends State<BottomSheetPanel> {
  final _controller = TextEditingController();

  List<Coupon> allCoupon = [
    Coupon("abc", "percent", 10),
    Coupon("leo", "price", 10),
    Coupon("ning", "percent", 10),
    Coupon("homepro", "price", 10)
  ];

  List<Coupon> userCoupon = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          )),
      height: 550,
      child: Column(
        children: <Widget>[
          BottomSheetAppBar(context),
          inputCode(context),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => CouponTile(userCoupon[index]),
              itemCount: userCoupon.length,
            ),
          )
        ],
      ),
    );
  }

  Container inputCode(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(color: Colors.grey[300], width: 1),
              top: BorderSide(color: Colors.grey[300], width: 1))),
      height: 70,
      child: Row(
        children: <Widget>[
          Container(
            width: 270,
            padding: EdgeInsets.only(right: 10),
            child: TextField(
              onSubmitted: (value) {
                print(_controller.text);
              },
              controller: _controller,
              maxLength: 10,
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 12),
                  hintText: "Try to type homepro",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  counterText: "",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ))),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {


                  if (getCode(_controller.text) != null) {
                    FocusScope.of(context).unfocus();
                    userCoupon.add(getCode(_controller.text));
                    _controller.text = "";
                  }
                },
                color: Colors.indigo,
                child: Text("Apply",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack BottomSheetAppBar(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
              )),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              "My Code",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        Positioned(
            right: 6,
            top: 6,
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 24.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ))
      ],
    );
  }

  Coupon getCode(String code) {
    return allCoupon.firstWhere((element) => element.code == code,
        orElse: () => null);
  }
}

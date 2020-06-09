import 'package:flutter/material.dart';

import 'CouponModel.dart';

class CouponTile extends StatelessWidget {
  Coupon coupon;

  CouponTile(Coupon coupon) {
    this.coupon = coupon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          // Image product
          Container(
            height: 100,
            width: 100,
            decoration: new BoxDecoration(
              color: Colors.yellow,
              borderRadius: new BorderRadius.all(Radius.circular(10)),
            ),
          ),

          // Title
          Positioned(
            child: Text(
              coupon.code,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            left: 130,
            top: 40,
          ),
        ],
        alignment: Alignment.centerLeft,
      ),
      height: 100,
      margin: const EdgeInsets.only(
          top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}

library list_with_scrollable_header;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListWithScrollableHeader {
  Widget builder({BuildContext context, List<ItemWithHeader> itens}) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Wrap(
                    children: itens.map((item) {
                  return Text(item.header);
                }).toList()),
              ],
            ),
          ),
          Container(
            height: 400,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.all(10),
                  color: Colors.brown,
                  child: Wrap(
                    children: itens.map((item) {
                      return Container(
                        color: Colors.lightGreen,
                        child: Column(
                          children: <Widget>[Text(item.header), item.child],
                        ),
                      );
                    }).toList(),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class ItemWithHeader {
  String header;
  Widget child;

  ItemWithHeader({@required this.header, @required this.child});
}

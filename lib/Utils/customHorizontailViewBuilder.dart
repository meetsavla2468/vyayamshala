import 'package:flutter/material.dart';

class ViewBuilder extends StatelessWidget {
  final List itemlist;

  const ViewBuilder({Key? key, required this.itemlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 10, top: 10, bottom: 5, left: 2),
          padding: const EdgeInsets.all(40),
          height: 170,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(itemlist[index].title),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Join"),
                  ),
                ],
              )
            ],
          ),
        );
      },
      itemCount: itemlist.length,
    );
  }
}

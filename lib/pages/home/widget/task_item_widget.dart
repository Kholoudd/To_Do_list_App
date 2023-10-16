import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 100,
                width: 5,
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "play basket ball",
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        "llllllllllllllllllllllllllllllllllll",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.bodyMedium!.copyWith(height: 1.1),
                      ),
                      Row(
                        children: [
                          ImageIcon(AssetImage("asset/images/Discovery.png")),
                          Text(
                            "10:00",
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Container(
                width: 60,
                height: 30,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ImageIcon(AssetImage(
                  "asset/images/icon_check.png",
                )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

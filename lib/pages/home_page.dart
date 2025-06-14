import 'package:flutter/material.dart';
import 'package:learning_flutter/components/go_club.dart';
import 'package:learning_flutter/components/gopay.dart';
import 'package:learning_flutter/components/gopay_later.dart';
import 'package:learning_flutter/components/header.dart';
import 'package:learning_flutter/components/menu.dart';
import 'package:learning_flutter/components/news.dart';
import 'package:learning_flutter/components/quick_access.dart';
import 'package:learning_flutter/components/search.dart';
import 'package:learning_flutter/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(), // AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Search(),

            Gopay(),

            Menu(),

            GoClub(),

            QuickAccess(),

            GopayLater(),

            

            News(),
          ],
        ),
      ),
    );
  }
}

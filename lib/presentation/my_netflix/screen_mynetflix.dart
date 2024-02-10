import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone/presentation/widgets/topbar_widget.dart';

class ScreenMyNetflix extends StatelessWidget {
  const ScreenMyNetflix({super.key});
  final profileImg = "assets/images/wednesday.jpg";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const FlexibleSpaceBar(
        title: TopBarWidget(title: 'My Netflix'),
        titlePadding: EdgeInsets.only(bottom: 12.0),
        centerTitle: false,
      )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(profileImg), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                ),
                h5,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'JENNA',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                )
              ],
            ),
          ),
          h30,
          h20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: darkRed,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: whiteClr,
                    size: 30,
                  ),
                ),
                w10,
                const Text(
                  'Notifications',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: whiteClr,
                  size: 30,
                )
              ],
            ),
          ),
          h30,
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScreenDownloads()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: indigoClr,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Icon(
                      Icons.file_download_sharp,
                      color: whiteClr,
                      size: 30,
                    ),
                  ),
                  w10,
                  const Text(
                    'Downloads',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: whiteClr,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

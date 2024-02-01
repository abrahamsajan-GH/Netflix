import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/constants.dart';
import 'package:netflix_clone/presentation/downloads/widgets/downloads_images.dart';
import 'package:netflix_clone/presentation/widgets/topbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const Div1(),
    const Div2(),
    const Div3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TopBarWidget(
              title: "Downloads",
            )),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (context1, index) => _widgetList[index],
            separatorBuilder: (context1, index) => h30,
            itemCount: _widgetList.length));
  }
}

class Div1 extends StatelessWidget {
  const Div1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        h30,
        Icon(
          Icons.settings,
          color: greyClr,
          size: 18,
        ),
        w5,
        Text(
          'Smart Downloads',
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: greyClr),
        ),
      ],
    );
  }
}

class Div2 extends StatelessWidget {
  const Div2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsData());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Turn on Downloads For You",
          style: TextStyle(
            color: whiteClr,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
        h10,
        const Text(
          "We will download movies and shows just for you, so you will always have something to watch.",
          style: TextStyle(color: Colors.grey, fontSize: 12),
          textAlign: TextAlign.start,
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: size.width * 0.34,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  DownloadsImages(
                    imageList: state.downloads.length > 1
                        ? '$apiImgUrl${state.downloads[0].posterPath}'
                        : '',
                    margin: const EdgeInsets.only(left: 165),
                    angle: 20,
                    size: Size(size.width * 0.30, size.width * 0.46),
                  ),
                  DownloadsImages(
                    imageList: state.downloads.length > 2
                        ? '$apiImgUrl${state.downloads[1].posterPath}'
                        : '',
                    margin: const EdgeInsets.only(right: 165),
                    angle: -20,
                    size: Size(size.width * 0.30, size.width * 0.46),
                  ),
                  DownloadsImages(
                    imageList: state.downloads.length > 3
                        ? '$apiImgUrl${state.downloads[2].posterPath}'
                        : '',
                    margin: const EdgeInsets.only(top: 0),
                    size: Size(size.width * 0.36, size.width * 0.56),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class Div3 extends StatelessWidget {
  const Div3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: dIndigoClr,
            textColor: whiteClr,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Set up',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        h20,
        h20,
        MaterialButton(
          color: lwhiteClr,
          textColor: whiteClr,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Find More to Download',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//void main() => runApp(SocialMediaHomeApp());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(height: 20),
        Center(
          child: Text(
            "Embark on Your Cooking Journey ",
            style: GoogleFonts.mysteryQuest(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0), 
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), 
              const SizedBox(
                height: 40,
                width: 40, 
                child: Icon(Icons.camera_enhance_rounded),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text("Recepies of the day",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
        Center(
          child: SizedBox(
            width: 500,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(seconds: 3),
                viewportFraction: 0.8,
              ),
              items: imgList.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ]),
    ));
  }
}

final List<String> imgList = [
  'https://clubmahindra.gumlet.io/blog/media/section_images/7famousdis-09a4a504f080e0f.webp?w=376&dpr=2.6',
  'https://res.cloudinary.com/simplotel/image/upload/w_5000,h_3334/x_0,y_297,w_5000,h_2813,r_0,c_crop,q_80,fl_progressive/w_500,f_auto,c_fit/lotus-eco-beach-resort-konark/Macha_Ghanta_z2pu3d',
  'https://www.holidify.com/blog/wp-content/uploads/2016/09/indian-malpua.jpg'
];

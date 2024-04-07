import 'package:flutter/material.dart';

class AnimatedCards extends StatefulWidget {
  const AnimatedCards({super.key});

  @override
  State<AnimatedCards> createState() => _AnimatedCardsState();
}

class _AnimatedCardsState extends State<AnimatedCards> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  bool isHovered4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHovered1 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHovered1 = false;
                });
              },
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 700),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                    curve: Curves.easeInOut,
                    bottom: isHovered1 ? 100 : 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(isHovered1 ? 0 : 30),
                          bottomRight: Radius.circular(isHovered1 ? 0 : 30),
                          topLeft: const Radius.circular(30),
                          topRight: const Radius.circular(30),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    bottom: isHovered1 ? 0 : 60,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(isHovered1 ? 30 : 0),
                          bottomRight: Radius.circular(isHovered1 ? 30 : 0),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The new John Doe is here!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHovered2 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHovered2 = false;
                });
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 700),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                    curve: Curves.easeInOut,
                    bottom: isHovered2 ? 100 : 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(isHovered2 ? 0 : 30),
                          bottomRight: Radius.circular(isHovered2 ? 0 : 30),
                          topLeft: const Radius.circular(30),
                          topRight: const Radius.circular(30),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    bottom: isHovered2 ? 0 : 60,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(isHovered2 ? 30 : 0),
                          bottomRight: Radius.circular(isHovered2 ? 30 : 0),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'PS5',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The new PS5 is here!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHovered3 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHovered3 = false;
                });
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 700),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                    curve: Curves.easeInOut,
                    top: isHovered3 ? 100 : 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(isHovered3 ? 0 : 30),
                          topRight: Radius.circular(isHovered3 ? 0 : 30),
                          bottomLeft: const Radius.circular(30),
                          bottomRight: const Radius.circular(30),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    top: isHovered3 ? 0 : 60,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(isHovered3 ? 30 : 0),
                          topRight: Radius.circular(isHovered3 ? 30 : 0),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'iPhone 15',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The new iPhone 15 is here!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHovered4 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHovered4 = false;
                });
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    bottom: isHovered4 ? 0 : 60,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(isHovered4 ? 30 : 0),
                          bottomRight: Radius.circular(isHovered4 ? 30 : 0),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'iPhone 15',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The new iPhone 15 is here!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 700),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 300,
                    curve: Curves.easeInOut,
                    bottom: isHovered4 ? 100 : 0,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(isHovered4 ? 0 : 30),
                          topRight: Radius.circular(isHovered4 ? 0 : 30),
                          bottomLeft: Radius.circular(isHovered4 ? 0 : 30),
                          bottomRight: Radius.circular(isHovered4 ? 0 : 30),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

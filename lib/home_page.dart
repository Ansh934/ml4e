import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:grid_background/grid_background.dart';
import 'package:ml4e/common/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.background,
      appBar: AppBar(
        title: const Text(
          'ML4E',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        backgroundColor: Colours.background,
        leading: Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            'assets/icons/logo.png',
            height: 36,
            width: 36,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        // bottom: const PreferredSize(
        //   preferredSize: Size.fromHeight(1),
        //   child: Divider(color: Colours.border),
        // ),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: const Gridbackground(
                space: 20,
                horizontallinewidth: 1.0,
                verticallinewidth: 1.0,
                color: Colours.grid),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'The road to knowledge starts from here.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Learn in-depth Machine Learning with ML4E.',
                        textAlign: TextAlign.center,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Learn Now',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

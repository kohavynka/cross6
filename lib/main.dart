import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'container_config.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContainerConfig(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Анонімна функція для контейнера
                Consumer<ContainerConfig>(
                  builder: (context, config, child) {
                    return Container(
                      width: config.width,
                      height: config.height,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(config.topRightRadius),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // Анонімна функція для слайдера ширини
                Consumer<ContainerConfig>(
                  builder: (context, config, child) {
                    return Column(
                      children: [
                        Text("Width: ${config.width.toStringAsFixed(1)}"),
                        Slider(
                          value: config.width,
                          min: 0,
                          max: 300,
                          onChanged: (value) => config.setWidth(value),
                        ),
                      ],
                    );
                  },
                ),

                // Анонімна функція для слайдера висоти
                Consumer<ContainerConfig>(
                  builder: (context, config, child) {
                    return Column(
                      children: [
                        Text("Height: ${config.height.toStringAsFixed(1)}"),
                        Slider(
                          value: config.height,
                          min: 0,
                          max: 300,
                          onChanged: (value) => config.setHeight(value),
                        ),
                      ],
                    );
                  },
                ),

                // Анонімна функція для слайдера радіуса верхнього правого кута
                Consumer<ContainerConfig>(
                  builder: (context, config, child) {
                    return Column(
                      children: [
                        Text("Top-Right Corner Radius: ${config.topRightRadius.toStringAsFixed(1)}"),
                        Slider(
                          value: config.topRightRadius,
                          min: 0,
                          max: 300,
                          onChanged: (value) => config.setTopRightRadius(value),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

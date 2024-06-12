import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainContentWidget extends StatelessWidget {
  final Size size;

  const MainContentWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                'assets/air-plane.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 80,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ZG',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Zagreb',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Container(
                width: 20,
                height: 20,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffEB6A4B),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'SA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Sarajevo',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thu, May 02',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '20:50',
                    style: TextStyle(
                      color: Color.fromARGB(160, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Thu, May 02',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '22:00',
                    style: TextStyle(
                      color: Color.fromARGB(160, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Passenger',
                style: TextStyle(
                  color: Color.fromARGB(160, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              Text(
                'Avendaño',
                style: TextStyle(
                  color: Color.fromARGB(190, 255, 255, 255),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Seat',
                      style: TextStyle(
                        color: Color.fromARGB(160, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '24A',
                      style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gate',
                        style: TextStyle(
                          color: Color.fromARGB(160, 255, 255, 255),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '4F',
                        style: TextStyle(
                          color: Color.fromARGB(190, 255, 255, 255),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Class',
                      style: TextStyle(
                        color: Color.fromARGB(160, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Bussines',
                      style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Boarding Time',
                      style: TextStyle(
                        color: Color.fromARGB(160, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '21:45, May 02',
                      style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flight',
                style: TextStyle(
                  color: Color.fromARGB(160, 255, 255, 255),
                  fontSize: 14,
                ),
              ),
              Text(
                'GA 250',
                style: TextStyle(
                  color: Color.fromARGB(190, 255, 255, 255),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const Spacer(),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/logo.jpg'),
            ),
            title: Text(
              'COMPANY NAME',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'An airline is a company that provides air transport services for traveling.',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

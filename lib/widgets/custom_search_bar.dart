import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final TextEditingController searchController = TextEditingController();

  CustomSearchAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100); // Tinggi AppBar custom

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      elevation: 0,
      toolbarHeight: 100, // Ketinggian AppBar
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Search Bar
              const SizedBox(width: 5),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                        hintText: 'Search candles',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Manrope',
                            fontSize: 14),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.camera_alt_outlined,
                          color: Color.fromRGBO(64, 64, 64, 1),
                          size: 20,
                        )),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              // Icon Bell
              IconButton(
                icon: const Icon(Icons.notifications_none,
                    color: Color.fromRGBO(64, 64, 64, 1)),
                onPressed: () {
                  // Logic notifikasi
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Alamat atau lokasi
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, size: 20),
                SizedBox(width: 5),
                Text(
                  'Deliver to',
                  style: TextStyle(
                      color: Colors.black, fontSize: 14, fontFamily: 'Manrope'),
                ),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                    '3517 W.Gray St.Utica,Pennsylvania',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

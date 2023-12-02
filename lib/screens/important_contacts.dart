import 'package:flutter/material.dart';
import 'package:flutter_weekend/models/contact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ImportantContacts extends StatelessWidget {
  const ImportantContacts({super.key});

  @override
  Widget build(BuildContext context) {
    List<Contact> contactsList = [
      Contact(name: "Emergency", phoneNumber: "013-5937485"),
      Contact(name: "Security Department", phoneNumber: "013-1947483"),
      Contact(name: "Registrar", phoneNumber: "013-9462847"),
      Contact(name: "KFUPM Central", phoneNumber: "013-4195738"),
      Contact(name: "Medical Center", phoneNumber: "013-8603354"),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Important Contacts"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: ListView.builder(
          itemCount: contactsList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              contactsList[index].name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  contactsList[index].phoneNumber,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final url = Uri(
                              scheme: "tel",
                              path: contactsList[index].phoneNumber,
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreen),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.phone,
                                size: 18,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Call",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

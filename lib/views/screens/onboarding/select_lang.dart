import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/models/onboard_model.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/input_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SelectPreferredLangPage extends StatefulWidget {
  const SelectPreferredLangPage({super.key});

  static const id = "selectPreferredLangPage";
  @override
  State<SelectPreferredLangPage> createState() =>
      _SelectPreferredLangPageState();
}

class _SelectPreferredLangPageState extends State<SelectPreferredLangPage> {
  int selectedIndex = 0;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(
                height: heightQuery(context) * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select your preferred language",
                          style: textStyle(size: 20, weight: FontWeight.w600),
                        ),
                        const Gap(5),
                        Text(
                            "You will use the same language throughout the app",
                            style: textStyle(size: 13, color: blackColor60))
                      ],
                    ),
                    const Spacer(),
                    CustomTextField(
                      controller: controller,
                      hintText: "Search your preferred choice",
                      prefixIcon: Icons.search,
                      onChanged: (value) {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    var country = countries[index];

                    bool selected = selectedIndex == index;
                    return Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ListTile(
                        selectedTileColor:
                            selected ? primaryMaterialColor : null,
                        selected: selected,
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                          print(selectedIndex);
                        },
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(width: 1.0, color: blackColor20),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        title: Text(country.name),
                        leading: const CircleAvatar(),
                        trailing:
                            // Radio(
                            //     value: "value",
                            //     groupValue: "groupValue",
                            //     onChanged: (value) {})

                            selected
                                ? Container(
                                    height: 15,
                                    width: 15,
                                    decoration: const BoxDecoration(
                                        color: whiteColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Icon(
                                      Icons.check,
                                      color: primaryColor,
                                      size: 12,
                                    ),
                                  )
                                : null,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, SignInPage.id, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryMaterialColor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minimumSize: const Size(double.infinity, 55)),
                  child: Text(
                    "Next",
                    style: textStyle(
                        color: whiteColor, weight: FontWeight.bold, size: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Countries> countries = [
  Countries(name: "English", isActive: false),
  Countries(name: "French", isActive: false),
  Countries(name: "German", isActive: false),
  Countries(name: "India", isActive: false),
  Countries(name: "Italy", isActive: false),
  Countries(name: "Portuguese", isActive: false),
];

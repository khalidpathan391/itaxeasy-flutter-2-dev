import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gst_app/Controllers/menu_controller.dart';
import 'package:gst_app/Views/SideBar/side_menu.dart';
import 'package:provider/provider.dart';
import '../../Theme/colors.dart';
import 'header_customer.dart';

class ListCustomer extends StatefulWidget {
  const ListCustomer({Key key}) : super(key: key);

  @override
  _ListCustomerState createState() => _ListCustomerState();
}

class _ListCustomerState extends State<ListCustomer> {
  // String formatDateTime(DateTime dateTime) {
  //   return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  // }

  // ApiResponse<List<EFiledlist>> apiResponse2;

  // List<Contact> contacts;
  // List<Contact> filteredContacts= [];
  // getContacts()async{
  //   if(await FlutterContacts.requestPermission()){
  //     contacts = await FlutterContacts.getContacts(
  //         withProperties: true, withPhoto: true);
  //   }
  //   setState(() {
  //
  //   });
  //
  // }
  TextEditingController searchController =  TextEditingController();
  @override
  //
  // filterContacts(){
  //   List<Contact> _contacts = [];
  //   _contacts.addAll(contacts);
  //   if(searchController.text.isNotEmpty){
  //     _contacts.retainWhere((element) {
  //       String searchItem = searchController.text.toLowerCase();
  //       String searchTermFlatten = flattenPhoneNumber(searchItem);
  //       String  contactName = element.displayName.toLowerCase();
  //       bool nameMatches = contactName.contains(searchItem);
  //       if(nameMatches == true){
  //         return true;
  //       }
  //       if (searchTermFlatten.isEmpty){
  //         return false;
  //       }
  //       var phone = element.phones.firstWhere((phn) {
  //         String phnFlattened = flattenPhoneNumber(phn.number);
  //         return phnFlattened.contains(searchTermFlatten);
  //       },orElse:()=> null);
  //     return phone != null;
  //
  //     });
  //     setState(() {
  //       filteredContacts =  _contacts;
  //     });
  //   }
  // }
  String flattenPhoneNumber(String phoneStr){
    return phoneStr.replaceAllMapped(RegExp(r'^(\+)|\D'), (Match m){
      return m[0]=="+"?"+": "";

    });}
  // @override
  // void initState() {
  //   getContacts();
  //   searchController.addListener(() {
  //     filterContacts();
  //   });
  //   super.initState();
  //
  //
  //
  //   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKeys,
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: FadeInDown(
          delay: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 500),
          child: Column(
            children: [
              FadeInDown(
                  delay: const Duration(milliseconds: 550),
                  duration: const Duration(milliseconds: 550),
                  child: const CustomerHeader()),
              const SizedBox(
                height: 20,
              ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              // onChanged: (value){
              //   setState(() {
              //
              //   });
              // },
              // controller: searchController,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: GoogleFonts.dmSans(),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    // margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                    decoration: const BoxDecoration(
                      // color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset("assets/icons/Search.svg",color: KColors.icon,),
                  ),
                ),
              ),
            ),
          ),
              // contactList(context),

            ],
          ),
        ),
      ),
    );
  }
  //
  // Widget contactList(BuildContext context){
  //   bool isSearching = searchController.text.isNotEmpty;
  //
  //   return contacts == null ? const Center(child: CircularProgressIndicator()):
  //   ListView.builder(
  //       physics: const NeverScrollableScrollPhysics(),
  //       itemCount: isSearching == true ? filteredContacts.length :contacts.length,
  //       shrinkWrap: true,
  //       itemBuilder: (context, int index){
  //         Contact item = isSearching == true ? filteredContacts[index] : contacts[index];
  //         Uint8List image  = item.photo;
  //         String num = (item.phones.isNotEmpty) ? (item.phones.first.number) : "--";
  //         return ListTile(
  //           leading:  (item.photo == null)
  //             ? const CircleAvatar(child: Icon(Icons.person))
  //             : CircleAvatar(backgroundImage: MemoryImage(image)),
  //           title: Text(item.displayName,style: GoogleFonts.dmSans(
  //             fontWeight: FontWeight.bold,
  //             fontSize: 15,
  //             color: KColors.headline,
  //           ),),
  //           subtitle: Text(num,style: GoogleFonts.dmSans(
  //             fontWeight: FontWeight.normal,
  //             fontSize: 15,
  //             color: KColors.subtitles,
  //
  //           ),),
  //             onTap: () {
  //               if (item.phones.isNotEmpty) {
  //                 launch('tel: $num');
  //               }
  //       },
  //     );
  //   });
  // }
}

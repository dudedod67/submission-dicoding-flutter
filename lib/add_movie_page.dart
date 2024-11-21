// import 'package:flutter/material.dart';
// import 'homepage.dart';

// class AddMoviePage extends StatefulWidget {
//   final Function(Movie) onAddMovie;

//   AddMoviePage({required this.onAddMovie});

//   @override
//   _AddMoviePageState createState() => _AddMoviePageState();
// }

// class _AddMoviePageState extends State<AddMoviePage> {
//   final _nameController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _imageUrlController = TextEditingController();
//   bool _isUrlValid = true;

//   void _showAlert(String message) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Row(
//           children: [
//             Icon(Icons.info_outline),
//             SizedBox(width: 10),
//             Text(
//               'Incomplete Data',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//         content: Text(
//           message,
//           style: TextStyle(fontFamily: 'Poppins'),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: Text(
//               'OK',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   InputDecoration _buildInputDecoration(String hintText) {
//     return InputDecoration(
//       hintText: hintText,
//       filled: true,
//       fillColor: Colors.grey[200],
//       contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
//       hintStyle: TextStyle(
//         fontFamily: 'Poppins',
//         color: Colors.grey,
//       ),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: BorderSide.none,
//       ),
//     );
//   }

//   bool _isValidUrl(String url) {
//     final Uri? uri = Uri.tryParse(url);
//     return uri != null &&
//         (uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(
//           'Add Movie',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Movie Name',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 8),
//             TextField(
//               controller: _nameController,
//               decoration:
//                   _buildInputDecoration('Example: The Chronicles of Narnia'),
//               style: TextStyle(fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Description',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 8),
//             TextField(
//               controller: _descriptionController,
//               decoration:
//                   _buildInputDecoration('Example: A fantasy adventure film...'),
//               maxLines: 3,
//               style: TextStyle(fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Image URL',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: 8),
//             TextField(
//               controller: _imageUrlController,
//               decoration:
//                   _buildInputDecoration('Example: https://imageurl.com'),
//               style: TextStyle(fontFamily: 'Poppins'),
//               onChanged: (value) {
//                 setState(() {
//                   _isUrlValid = _isValidUrl(value);
//                 });
//               },
//             ),
//             if (!_isUrlValid)
//               Padding(
//                 padding: const EdgeInsets.only(top: 4.0),
//                 child: Text(
//                   'Please enter a valid URL.',
//                   style: TextStyle(color: Colors.red, fontSize: 12),
//                 ),
//               ),
//             SizedBox(height: 30),
//             InkWell(
//               onTap: () {
//                 if (_nameController.text.isEmpty ||
//                     _descriptionController.text.isEmpty ||
//                     _imageUrlController.text.isEmpty ||
//                     !_isUrlValid) {
//                   // Check URL validity
//                   _showAlert('Some fields have not been filled correctly.');
//                 } else {
//                   final movie = Movie(
//                     name: _nameController.text,
//                     description: _descriptionController.text,
//                     imageUrl: _imageUrlController.text,
//                   );
//                   widget.onAddMovie(movie);
//                   Navigator.pop(context);
//                 }
//               },
//               child: Container(
//                 width: double.infinity,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: Color(0xff1C1F28),
//                   borderRadius: BorderRadius.circular(9),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Add Movie',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 13,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

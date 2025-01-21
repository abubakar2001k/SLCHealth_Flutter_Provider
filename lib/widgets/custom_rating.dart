import 'package:flutter/material.dart';
import 'package:slc_health/theme/custom_color.dart';

class CustomRating extends StatelessWidget {
  final double? size;
  final double? rating;

  const CustomRating({super.key, this.rating, this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating!.floor()) {
          // Fully filled star
          return Icon(
            Icons.star,
            color: CustomColor().strColor,
            size: size ?? 23,
          );
        } else if (index < rating!) {
          // Half-filled star
          return Stack(
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
                size: size ?? 23,
              ),
              ClipRect(
                clipBehavior: Clip.hardEdge,
                clipper: _HalfStarClipper(),
                child: Icon(
                  Icons.star,
                  color: CustomColor().strColor,
                  size: size ?? 23,
                ),
              ),
            ],
          );
        } else {
          // Empty star
          return Icon(
            Icons.star,
            color: Colors.grey,
            size: size ?? 23,
          );
        }
      }),
    );
  }
}

class _HalfStarClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width / 2, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}


// return Row(
//       children: List.generate(
//         5,
//             (index) => Icon(
//           Icons.star,
//           color: index < rating!.toInt()
//               ? Colors.amber
//               : Colors.grey,
//            size : size ??  16,
//         ),
//       ),
//     );
//   }
// }
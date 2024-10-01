import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  String cardNumber = '1234 5678 9012 3456';
  String cardHolderName = 'Mahmoud Shahabo';
  String expiryDate = '10/25';
  String cvv = '123';
  bool showBack = false;

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 270),
        child: CreditCard(
          height: 260,
          width: 420,
          cardType: CardType.masterCard,
          frontBackground: CardBackgrounds.custom(const Color(0xFF4EB7F2).value),
          backBackground: CardBackgrounds.custom(const Color(0xFF4EB7F2).value),
          cardNumber: cardNumber,
          cardExpiry: expiryDate,
          cardHolderName: cardHolderName,
          cvv: cvv,
          bankName: 'Alx Bank',
          showShadow: false,
          showBackSide: showBack,
          frontTextColor: Colors.white,
          backTextColor: Colors.black,
        ),
      ),
    );
  }
}

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A timeless favorite featuring a juicy beef patty, melted cheddar cheese, fresh lettuce, ripe tomatoes, onions, and pickles, all sandwiched between a soft sesame seed bun.",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "A smoky delight with a beef patty topped with crispy bacon, tangy BBQ sauce, cheddar cheese, onion rings, and fresh lettuce, served on a toasted brioche bun.",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 10.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Coleslaw", price: 0.75),
        Addon(name: "Pepper Jack Cheese", price: 0.75),
        Addon(name: "Pickles ", price: 0.25),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "A savory burger with a beef patty, melted Swiss cheese, sautéed mushrooms, caramelized onions, and garlic aioli, all nestled in a whole wheat bun.",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Truffle Oil", price: 1.50),
        Addon(name: "Avocado", price: 1.00),
        Addon(name: "Bacon", price: 1.50),
      ],
    ),
    Food(
      name: "Spicy Jalapeño Burger",
      description:
          "For those who love a kick, this burger features a beef patty with pepper jack cheese, fresh jalapeños, spicy mayo, lettuce, and tomatoes, served on a spicy jalapeño cheddar bun.",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Guacamole", price: 1.25),
        Addon(name: "Bacon ", price: 1.50),
        Addon(name: "Extra Jalapeños", price: 0.50),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A vegetarian delight with a black bean and quinoa patty, topped with fresh avocado, lettuce, tomatoes, red onions, and a cilantro-lime mayo, served on a whole grain bun.",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 8.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Zucchini", price: 0.75),
        Addon(name: "Feta Cheese", price: 1.00),
        Addon(name: "Sprouts", price: 0.50),
      ],
    ),
    // salads
    Food(
      name: "Caesar Salad",
      description:
          "A classic salad with crisp romaine lettuce, Caesar dressing, croutons, and Parmesan cheese.",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.00),
        Addon(name: "Avocado", price: 2.00),
        Addon(name: "Bacon Bits", price: 1.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A fresh mix of tomatoes, cucumbers, red onions, Kalamata olives, and feta cheese, dressed with olive oil and oregano.",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 9.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Shrimp", price: 4.00),
        Addon(name: "Quinoa", price: 2.50),
        Addon(name: "Pepperoncini", price: 1.00),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "A hearty salad with mixed greens, grilled chicken, bacon, avocado, hard-boiled eggs, tomatoes, blue cheese, and a red wine vinaigrette.",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 10.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Avocado", price: 2.00),
        Addon(name: "Roasted Turkey", price: 3.50),
        Addon(name: "Extra Blue Cheese", price: 1.50),
      ],
    ),
    Food(
      name: "Spinach and Strawberry Salad",
      description:
          "A vibrant salad with baby spinach, fresh strawberries, red onions, goat cheese, and a balsamic vinaigrette.",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 12.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Candied Pecans", price: 1.50),
        Addon(name: "Grilled Salmon", price: 5.00),
        Addon(name: "Feta Cheese", price: 1.50),
      ],
    ),
    Food(
      name: "Asian Chicken Salad",
      description:
          "A flavorful salad with mixed greens, grilled chicken, mandarin oranges, shredded carrots, crispy wonton strips, and a sesame ginger dressing.",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 11.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Edamame", price: 1.50),
        Addon(name: "Avocado", price: 2.00),
        Addon(name: "Fried Tofu", price: 2.50),
      ],
    ),

    // sides
    Food(
      name: "Asparagus",
      description:
          "Many veggie burgers are made from vegetables, whole grains, and legumes (like beans or lentils). These are good-for-you ingredients that provide fiber and a variety of vitamins and minerals.",
      imagePath: "lib/images/sides/side1.jpg",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Couscous", price: 0.99),
        Addon(name: "Sauteed zucchini", price: 1.99),
        Addon(name: "quinoa", price: 2.99),
      ],
    ),
    Food(
      name: "French Fries",
      description:
          "Crispy golden fries, lightly salted and perfect for any meal.",
      imagePath: "lib/images/sides/side2.jpg",
      price: 3.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 1.00),
        Addon(name: "Bacon", price: 1.50),
        Addon(name: "Chili", price: 2.00),
      ],
    ),
    Food(
      name: "Garden Salad",
      description:
          "Fresh mixed greens, tomatoes, cucumbers, and carrots with your choice of dressing.",
      imagePath: "lib/images/sides/side3.jpg",
      price: 4.50,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.50),
        Addon(name: "Avocado", price: 1.50),
        Addon(name: "Avocado", price: 1.50),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description:
          "Deep-fried mozzarella cheese sticks served with marinara sauce.",
      imagePath: "lib/images/sides/side4.jpg",
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara Sauce", price: 0.50),
        Addon(name: "Ranch Dressing", price: 0.50),
        Addon(name: "Jalapeños:", price: 1.00),
      ],
    ),
    Food(
      name: "Mashed Potatoes",
      description: "Creamy mashed potatoes made with butter and cream.",
      imagePath: "lib/images/sides/side5.jpg",
      price: 3.50,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Gravy", price: 0.75),
        Addon(name: "Garlic Butter", price: 0.50),
        Addon(name: "Chives", price: 0.50),
      ],
    ),

    // desserts
    Food(
      name: "Hot Browine",
      description:
          "a small, square chocolate cake that is soft in the middle, often with pieces of chocolate or nuts in it.",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 4.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ranch", price: 0.50),
        Addon(name: "BBQ Sauce", price: 0.50),
        Addon(name: "Spicy Aioli", price: 0.75),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "A rich and creamy New York-style cheesecake with a graham cracker crust, served plain or with a fruit topping.",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 6.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 1.50),
        Addon(name: "Chocolate Sauce", price: 1.00),
        Addon(name: "Crushed Nuts", price: 1.00),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "An Italian classic dessert made with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder.",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 8.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Coffee Soak", price: 1.00),
        Addon(name: "Dark Chocolate Shavings", price: 1.50),
        Addon(name: "Amaretto Liqueur", price: 2.00),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "A traditional American dessert with a buttery crust and a filling of spiced apples, served warm.",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 5.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream:", price: 2.00),
        Addon(name: "Caramel Sauce:", price: 1.00),
        Addon(name: "Cheddar Cheese Slice:", price: 1.50),
      ],
    ),
    Food(
      name: "Mango Sticky Rice",
      description:
          "A popular Thai dessert made with glutinous rice, fresh mango slices, and sweet coconut milk.",
      imagePath: "lib/images/desserts/dessert5.jpg",
      price: 6.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Coconut Milk", price: 1.00),
        Addon(name: "Toasted Sesame Seeds", price: 0.50),
        Addon(name: "Fresh Mint Leaves", price: 0.75),
      ],
    ),
    // drinks
    Food(
      name: "Latte",
      description:
          "A classic espresso-based coffee drink made with steamed milk and topped with a light layer of foam.",
      imagePath: "lib/images/drinks/drink1.jpg",
      price: 4.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vanilla syrup", price: 0.50),
        Addon(name: "Caramel drizzle", price: 0.75),
        Addon(name: "Extra shot of espresso", price: 1.00),
      ],
    ),
    Food(
      name: "Smoothie (Strawberry Banana)",
      description:
          "A refreshing blend of fresh strawberries, bananas, and yogurt, perfect for a healthy snack.",
      imagePath: "lib/images/drinks/drink2.jpg",
      price: 5.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia seeds", price: 0.75),
        Addon(name: "Spinach", price: 0.50),
        Addon(name: "Almond butter", price: 1.00),
      ],
    ),
    Food(
      name: "Margarita",
      description:
          "A classic cocktail made with tequila, lime juice, and triple sec, served with a salted rim.",
      imagePath: "lib/images/drinks/drink3.jpg",
      price: 8.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot of tequila", price: 2.00),
        Addon(name: "Mango puree", price: 1.00),
        Addon(name: "Spicy rim (tajin)", price: 0.50),
      ],
    ),
    Food(
      name: "Iced Green Tea",
      description:
          "A refreshing and light drink made with brewed green tea, served over ice.",
      imagePath: "lib/images/drinks/drink4.jpg",
      price: 3.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Honey", price: 0.50),
        Addon(name: "Lemon slices", price: 0.25),
        Addon(name: "Mint leaves", price: 0.50),
      ],
    ),
    Food(
      name: "Hot Chocolate",
      description:
          " A rich and creamy drink made with melted chocolate and steamed milk, topped with whipped cream.",
      imagePath: "lib/images/drinks/drink5.jpg",
      price: 3.50,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Marshmallows", price: 0.50),
        Addon(name: "Peppermint syrup", price: 0.75),
        Addon(name: "Caramel drizzle", price: 2.99),
      ],
    ),
  ];
  // user cart
  final List<CartItem> _cart = [];

  String _deliveryAddress = '99 Hollywood Blv';

  /*

  G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  /*

  O P E R A T I O N S

  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*

  H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: + $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}

import 'package:app_dev/models/cart.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'package:intl/intl.dart';

class Marketplace extends ChangeNotifier {
  final List<ItemsForSale> _list = [
    ItemsForSale(
      name: "Colt Mustang", 
      description: "Colt Mustang is a small frame .380 ACP semi-auto handgun based on the M1911", 
      description2: "Type: Pistol \n Caliber: .380 ACP \n Barrel length: 2.8 in (7 cm) \n Feed System: 5/6 round magazine \n Fire Modes: Semi-Auto (SA)", 
      imagePath: "assets/images/pistols/Colt_Mustang.jpg", 
      price: 13000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "CZ 99", 
      description: "Semi-automatic pistol produced by Zastava Arms.", 
      description2: "Type: Pistol \n Caliber: 9x19mm, .40 Smith & Wesson \n Barrel length: 108 mm (4.3 in) \n Capacity: 15, 10 \n Fire Modes: Semi-Auto", 
      imagePath: "assets/images/pistols/CZ99.jpg", 
      price: 9000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Desert Eagle", 
      description: "Single-action, gas-operated, semi-automatic pistol known for chambering the .50 Action Express", 
      description2: "Type: Pistol \n Barrel length(s): 6 in (152.4 mm) \n Caliber: .429 Desert Eagle \n Capacity: 7 (.440 Cor-Bon, .429 DE and .50 Action Express) \n Fire Modes: Semi-Automatic (Single-Action, Gas Operation)", 
      imagePath: "assets/images/pistols/Desert_Eagle.jpg", 
      price: 20000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Fort-17", 
      description: "Semi-automatic pistol which was designed in the year 2004[", 
      description2: "Type: Pistol \n Caliber: 9x18mm Makarov, 9x17mm Kurz (.380 ACP) \n Barrel length: 3.7 in (9.5 cm) \n Capacity: 12, 15 (9x18mm); 14, 16 (9x17mm) \n Fire Modes: Semi-Auto (DA/SA)", 
      imagePath: "assets/images/pistols/Fort_17.jpg", 
      price: 8000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "M9", 
      description: "Beretta M9, officially the Pistol, Semiautomatic, 9mm, M9, is the designation for the Beretta 92FS semi-automatic pistol used by the United States", 
      description2: "Type: Pistol \n Caliber(s): 9x19mm, .22 LR \n Barrel length(s): 5 in (12.7 cm) \n Capacity: 15 \n Fire Modes: Semi-Auto (SA/DA)", 
      imagePath: "assets/images/pistols/M9.jpg", 
      price: 18000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Ruger LCP", 
      description: "Subcompact .380 pistol that was unveiled by Ruger at the 2008 SHOT Show", 
      description2: "Type: Pistol \n Caliber: .380 ACP \n \n Barrel length(s): 2.8 in (7 cm) \n Capacity: 6 rounds (LCP), 7 rounds (LC380) \n Fire Modes: Semi-Automatic (DAO)", 
      imagePath: "assets/images/pistols/Ruger_LC9.jpg", 
      price: 6000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Smith & Wesson Model 627", 
      description: "Smith & Wesson Model 627 is a stainless steel revolver chambered in .357 Magnum", 
      description2: "Type: Revolver \n Caliber: .357 Magnum \n Barrel length: 2.625 in (6.7 cm), 4 in (10.2 cm), 5 in (12.7 cm) or 6.5 in (16.5 cm) \n Capacity: 6 or 8 round Cylinder \n Fire Modes: Double Action", 
      imagePath: "assets/images/pistols/Smith_and_Wesson_Model_5906.jpg", 
      price: 19000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Star Model S", 
      description: "Star Model S was a series of compact pistols chambered in .380 or .32 ACP", 
      description2: "Type: Pistol \n Caliber: .380 ACP, .32 ACP \n Feed System: 8-round magazine \n Fire Modes: Semi-Auto", 
      imagePath: "assets/images/pistols/Star_Model_S.jpg", 
      price: 8000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Tec-9", 
      description: "TEC-9 is more or less identical to the KG-99, except for a few differences in the sights and recoil buffer", 
      description2: "Type: Pistol (KG-99, TEC-9, DC-9, AB-10) , Machine Pistol / submachine gun (MP-9) \n Caliber: 9x19mm \n Capacity: 10, 20, 32, 36, 50-round box magazines \n Fire Modes: Safe/Semi (KG-9, KG-99, TEC-9, DC-9, AB-10)", 
      imagePath: "assets/images/pistols/Tec_9.jpg", 
      price: 21000, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "Zigana", 
      description: "Semi-automatic pistol produced by Turkish firearm manufacturing company TİSAŞ",
      description2: "Type: Pistol \n Caliber: .45 ACP (C45) \n Capacity: 9 round magazine (.45 ACP) \n Barrel Length 126mm (M16), 130mm (T/Sport), 117mm (F), 108mm (K) \n Fire Modes: Semi-Automatic (Semi-Auto/Full-Auto as an option on Zigana F)",  
      imagePath: "assets/images/pistols/Zigana.jpg", 
      price: 7500, 
      category: Categories.pistols
    ),
    ItemsForSale(
      name: "ADS", 
      description: "Assault rifle based on the A-91, with a lineage tracing back to the original Soviet APS Underwater Rifle", 
      description2: "Type: Amphibious Assault Rifle \n Caliber: 5.45x39mm (Rifle), 40mm VOG/GRD (Grenade Launcher) \n Barrel length: 16.5 in (41.8 cm) \n Capacity: 30-round AK-74-type box magazine \n Fire Modes: Semi-Auto/Full-Auto", 
      imagePath: "assets/images/rifles/ADS.jpg", 
      price: 50000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "AK-47", 
      description: "Select-fire, gas-operated 7.62x39mm assault rifle, developed in the Soviet Union", 
      description2: "Type: Assault Rifle \n Caliber: 7.62x39mm \n Barrel length: 16.4 in (41.6 cm) \n Muzzle velocity: 2,350 ft/s (715 m/s) \n Feed System: 10, 20, 30, 40-round box magazine, 75 or 100-round drum magazine \n Fire Modes: Semi-Auto/Full-Auto", 
      imagePath: "assets/images/rifles/AK-47.jpg", 
      price: 45000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "AK-74", 
      description: "AK-74 is an updated 5.45x39mm version of the AK-47 rifle",
      description2: "Type: Assault Rifle \n Caliber: 5.45x39mm \n Barrel length: 16.3 in (41.5 cm) \n Feed System: 30, 45-round box magazine, 60-round casket magazine, 95-round dual drum magazine introduced in 2014 \n Fire Modes: Semi-Auto/Full-Auto",  
      imagePath: "assets/images/rifles/AK-74.jpg", 
      price: 48000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "AN94", 
      description: "AN-94 to be a high-tech replacement for almost all AK-74 rifles in service", 
      description2: "Type: Assault Rifle \n Caliber: 5.45x39mm \n Barrel length: 15.9 in (40.5 cm) \n Capacity: 30, 45, 60 round magazines \n Fire Modes: Semi-Auto / 2-Round-Burst (1,800rpm) / Full-Auto (2 rounds at 1,800rpm and then 600rpm sustained)", 
      imagePath: "assets/images/rifles/AN94.jpg", 
      price: 61000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "Galil", 
      description: "Galil is a 5.56x45mm assault rifle series based on the AK/Valmet series of assault rifles", 
      description2: "Type: Assault Rifle, Light Machine Gun, Sniper Rifle \n Caliber: 5.56x45mm NATO, 7.62x51mm NATO \n Capacity: 5.56 NATO: 10, 12, 20, 35, 50 round box magazine; can be adapted to accept STANAG Magazines. and 7.62 NATO: 5, 12, 20, 25, 30 round magazine. Converted M14 magazines are common and may be used. \n Fire Modes: Safe/Semi/Full-Auto", 
      imagePath: "assets/images/rifles/Galil.jpg", 
      price: 50000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "HK433", 
      description: "HK433 is a modular assault rifle chambered for 5.56 x 45mm which combines features of the G36 and the HK416 families of assault rifles.", 
      description2: "Type: Assault Rifle \n Calibers: .300 Blackout (HK437) \n Barrel Length: 11 in (28 cm), 14.5 in (36.8 cm), 16.5 in (42 cm) \n Fire Modes: Semi-Auto/Full-Auto", 
      imagePath: "assets/images/rifles/HK433.jpg", 
      price: 690000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "M16", 
      description: "M16 rifle (officially designated Rifle, Caliber 5.56 mm, M16) is a family of military rifles adapted from the ArmaLite AR-15", 
      description2: "Type: Assault Rifle \n Caliber: 5.56x45mm NATO \n Capacity: STANAG Magazines: 5, 20, 30, 40 round box magazine/ 90 round snail drum/ 100 round dual drum Beta-C magazine \n Fire Modes: Safe/Semi (Mk 12 SPR, AR-15, civilian variants) Safe/Semi/Burst (M16A2, M16A4, M4) Safe/Semi/Auto (M16, M16A1, M16A3, M4A1)", 
      imagePath: "assets/images/rifles/M16.jpg", 
      price: 54000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "QBZ95", 
      description: "QBZ-95 is a bullpup assault rifle designed and manufactured by Norinco", 
      description2: "Type: Assault Rifle \n Caliber: 5.8x42mm DBP-87 (QBZ-95) \n Capacity:  75-round drum magazine \n Fire Modes: Safe/Semi/Full-Auto (650 RPM - QBZ-95)", 
      imagePath: "assets/images/rifles/QBZ95.jpg", 
      price: 49000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "Remington ACR", 
      description: "Remington ACR is a slightly modified, select-fire version of the Bushmaster ACR",
      description2: "Type: Assault rifle (Remington ACR, Magpul Masada) \n Caliber: 6.8 mm Remington SPC (Remington ACR, military only) \n Barrel length: 10.5 in (26.7 cm), 14.5 in (36.8 cm), 16.5 in (41.9 cm), 18 in (45.7 cm) \n Fire Modes: Semi-Auto/Full-Auto (Remington ACR)",  
      imagePath: "assets/images/rifles/Remington_ACR.jpg", 
      price: 86000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "Remington R4", 
      description: "Remington R4 is Remington's version of the M4 / M16 rifle series", 
      description2: "Type: Assault Rifle \n Caliber: 5.56x45mm NATO \n  Barrel Length: 14.5 in (36.8 cm) (R4)\n Fire Modes: Semi-Auto/Full-Auto", 
      imagePath: "assets/images/rifles/Remington_R4.jpg", 
      price: 77000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "Remington R5", 
      description: "Remington R5 carbine like AR-15 type rifle which uses a unique mid-length gas piston operating system", 
      description2: "Type: Assault Rifle \n Caliber: 5.56x45mm NATO \n Barrel Length: 10.5 in (26.7 cm), 14.5 in (36.8 cm) \n Fire Modes: Semi-Auto/Full-Auto", 
      imagePath: "assets/images/rifles/Remington_R5.jpg", 
      price: 90000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "Sar-21", 
      description: "Assault rifle designed and manufactured in Singapore by ST Kinetics", 
      description2: "Type: Assault Rifle \n Caliber: 5.56x45mm NATO \n Capacity: 30 \n Fire Modes: Safe/Semi/Auto", 
      imagePath: "assets/images/rifles/Sar-21.jpg", 
      price: 50000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "T91", 
      description: "T91 carbine is the latest development of the T65 rifle series and is a shorter, lighter version of the T65K2 with a removable carrying handle", 
      description2: "Type: Assault Rifle \n Caliber: 5.56x45mm NATO \n Barrel length: 16 in (40.6 cm) \n Fire Modes: Semi-Auto/Burst-3/Full-Auto", 
      imagePath: "assets/images/rifles/T91.jpg", 
      price: 83000, 
      category: Categories.rifles
    ),
    ItemsForSale(
      name: "Armsel Striker", 
      description: " Armsel Striker is a South African-manufactured cylinder shotgun", 
      description2: "Type: Shotgun \n Caliber: 12 gauge \n Capacity: 12-round revolving cylinder \n Fire Modes: Clockwork tension-operate drum on most models, manual operation only on Protecta", 
      imagePath: "assets/images/shotguns/Armsel_Striker.jpg", 
      price: 32000, 
      category: Categories.shotguns
    ),
    ItemsForSale(
      name: "Benelli Supernova", 
      description: "Benelli Supernova is a pump action shotgun used for hunting, self-defense and law enforcement", 
      description2: "Type: Shotgun \n Calibers: 12 gauge \n Barrel length: 18 in (45.7 cm) - 28 in (71.1 cm) \n Feed System: 4 or 6 round tube magazine \n Fire Modes: Pump action", 
      imagePath: "assets/images/shotguns/Benelli_Supernova.jpg", 
      price: 28000, 
      category: Categories.shotguns
    ),
    ItemsForSale(
      name: "Mossberg 930", 
      description: "Mossberg 930 is a 12-gauge semi-automatic shotgun designed by O.F. Mossberg & Sons", 
      description2: "Type: Shotgun \n Caliber: 12 Gauge \n Capacity: 4 \n Fire Modes: Semi-Auto", 
      imagePath: "assets/images/shotguns/Mossberg930.jpg", 
      price: 29000, 
      category: Categories.shotguns
    ),
    ItemsForSale(
      name: "RMB93", 
      description: "Russian pump-action shotgun conceived for close-quarter-combat with an action similar to the NeoStead 2000 Shotgun",
      description2: "Type: Shotgun \n Caliber: 12 gauge (12/70, 12/76) \n Barrel Length: 20.8 in (52.8 cm), 26.8 in (68 cm) \n Fire Mode(s): Pump-Action",  
      imagePath: "assets/images/shotguns/RMB93.jpg", 
      price: 37000, 
      category: Categories.shotguns
    ),
    ItemsForSale(
      name: "UTS15", 
      description: "UTAS UTS-15 is a modern pump-action shotgun, the principle feature being twin side-by-side tube magazines above the barrel, similar to the NeoStead 2000",
      description2: "Type: Shotgun \n Caliber: 12-gauge \n Barrel length: 18.5 in (47 cm) \n Capacity: 14+1 (2 3/4), 12+1 (3) \n Fire Modes: Pump-Action",  
      imagePath: "assets/images/shotguns/UTS15.jpg", 
      price: 52000, 
      category: Categories.shotguns
    ),
    ItemsForSale(
      name: "M12", 
      description: "M12 is an Italian sub-machine gun developed by Beretta mostly to be issued to Carabinieri",
      description2: "Type: Submachine Gun \n Caliber: 9x19mm Parabellum \n Barrel Length: 7.9 in (20 cm) \n Capacity: 20, 32 or 40 round box magazine \n Fire Modes: Safe/Semi-Auto/Full-Auto",  
      imagePath: "assets/images/smg/M12.jpg", 
      price: 18000, 
      category: Categories.smg
    ),
    ItemsForSale(
      name: "MP5K", 
      description: "Submachine gun developed in the 1960s by German firearms manufacturer Heckler & Koch",
      description2: "Type: Submachine gun \n Caliber: 9x19mm Parabellum (MP5) \n Capacity: 30 round box magazines \n Fire Modes: Safe/Semi/Full-Auto (MP5K)",  
      imagePath: "assets/images/smg/MP5K.jpg", 
      price: 26000, 
      category: Categories.smg
    ),
    ItemsForSale(
      name: "QCW-05", 
      description: "QCW-05, known as Type 05 Submachine Gun in Chinese, is a Chinese bullpup submachine gun",
      description2: "Type: Submachine Gun \n Caliber: 5.8x21mm DCV05 & DAP92 (QCW-05 & QCQ-05), 9x19mm (JS 9mm) \n Barrel length: 9.8 in (25 cm) \n Capacity: 50 (QCW-05/QCQ-05), 30 (JS 9mm) \n Fire Modes: Semi-Auto/Full-Auto",  
      imagePath: "assets/images/smg/QCW_05.jpg", 
      price: 31000, 
      category: Categories.smg
    ),
    ItemsForSale(
      name: "SIG-Sauer MPX", 
      description: "SIG MPX is a gas-operated submachine gun designed and manufactured by SIG Sauer, and is primarily chambered in 9 x 19mm Parabellum",
      description2: "Type: Submachine Gun (MPX), Carbine (MPX SBR) \n Caliber: 9x19mm \n Barrel Length: 8 in (20.3 cm), 6.5 in (16.5 cm) \n Feed System: 10, 20, 30, 35-round detachable box magazine \n Fire Modes: Semi-Auto/Full-Auto (MPX)",  
      imagePath: "assets/images/smg/SIG_MPX.jpg", 
      price: 44000, 
      category: Categories.smg
    ),
    ItemsForSale(
      name: "UMP", 
      description: "German submachine gun manufactured by Heckler & Koch",
      description2: "Type: Submachine Gun / Sporting Carbine \n Caliber: 9x19mm, .40 S&W, .45 ACP \n Barrel length: 7.9 in (20 cm) (UMP), 16 in (40.6 cm) (USC) \n Feed System: 30 round box magazine in 9x19mm \n Fire Modes: Safe/Semi/Full-Auto/Optional 2-round burst (UMP)",  
      imagePath: "assets/images/smg/UMP.jpg", 
      price: 39000, 
      category: Categories.smg
    ),
    ItemsForSale(
      name: "Vector", 
      description: "Vector is a series of weapons developed by KRISS USA (formerly known as TDI, Transformational Defense Industries). They use diverted recoil in the form of the Kriss Super V system",
      description2: "Type: Submachine Gun \n Caliber: .45 ACP, 9x19mm \n Barrel length: 5.5 in (14 cm) (SMG and SBR) \n Capacity: .22 LR: 10, 30. \n Fire Modes: Semi-Auto",  
      imagePath: "assets/images/smg/Vector.jpg", 
      price: 27000, 
      category: Categories.smg
    ),
    ItemsForSale(
      name: "AMR2", 
      description: "AMR-2 is a Chinese anti-materiel sniper rifle developed by Sichuan Huaqing Machinery Co. Ltd, a subsidiary of China South Industries Group",
      description2: "Type: Sniper Rifle \n Caliber: 12.7x108mm \n Barrel length: 850 mm / 33.5 \n Total length: 1450 mm / 57",  
      imagePath: "assets/images/snipers/AMR2.jpg", 
      price: 100000, 
      category: Categories.snipers
    ),
    ItemsForSale(
      name: "Barrett MRAD", 
      description: "Barrett MRAD (Multi-Role Adaptive Design) is a sniper rifle based on the Barrett M98B",
      description2: "Type: Sniper Rifle \n Caliber: .338 Lapua Magnum \n Barrel length(s): 27 inch (68.58 cm) \n Capacity: 10-round magazine \n Fire Modes: Bolt-Action (M98B) / Semi-automatic (M98)",  
      imagePath: "assets/images/snipers/Barret_MRAD.jpg", 
      price: 120000, 
      category: Categories.snipers
    ),
    ItemsForSale(
      name: "M93 Black Arrow", 
      description: "M93 Black Arrow is an anti-materiel rifle based on a Mauser pattern sporting rifle",
      description2: "Type: Sniper Rifle \n Caliber: .50 BMG or 12.7x108mm \n Barrel length: 39.4 in (100 cm) \n Capacity: 5 \n Fire Modes: Bolt-Action",  
      imagePath: "assets/images/snipers/Black_Arrow_M93.jpg", 
      price: 187000, 
      category: Categories.snipers
    ),
    ItemsForSale(
      name: "ORSIS T-5000", 
      description: "ORSIS T-5000 designed by ORuzejnyje SIStemy (ORSIS) as a long-ranged precision rifle composed of high quality",
      description2: "Type: Sniper Rifle \n Caliber: 7.62x51mm NATO (.308 Win) \n Barrel length: 26 in (66 cm) \n Capacity:10-round box (7.62x51mm NATO)",  
      imagePath: "assets/images/snipers/ORSIS_T-5000.jpg", 
      price: 320000, 
      category: Categories.snipers
    ),
    ItemsForSale(
      name: "Remington MSR", 
      description: "Modular Sniper Rifle, or MSR, is a bolt-action sniper rifle developed and produced by Remington Arms for the United States Army",
      description2: "Type:Sniper Rifle \n Caliber: .338 Lapua Mag \n Barrel lengths: 20 in (50.8 cm), 22 in (55.9 cm), 24 in (61 cm), 27 in (68.6 cm) \n Capacity: 5, 10 (7 for .300 Win Mag) \n Fire Modes: Bolt-Action",  
      imagePath: "assets/images/snipers/Remington_MSR.jpg", 
      price: 644000, 
      category: Categories.snipers
    ),
    ItemsForSale(
      name: "Steyr HS .50", 
      description: "Steyr HS .50 single-shot anti-materiel rifles manufactured by Steyr Mannlicher and chambered in .50 BMG",
      description2: "Type: Sniper Rifle \n Caliber: .50 BMG (HS .50) \n Barrel length: 33 in (83.3 cm) \n Capacity: 1 round (HS .50, HS .460) \n Fire Modes: Bolt-Action",  
      imagePath: "assets/images/snipers/Steyr_HS_.50.jpg", 
      price: 481000, 
      category: Categories.snipers
    ),
    ItemsForSale(
      name: "SVD Dragunov", 
      description: "SVD Dragunov Russian semi-automatic sniper rifle designed by Soviet weapon",
      description2: "Type: Designated Marksman Rifle \n Caliber: 7.62x54mm R \n Barrel length(s): 24.0 in (61 cm) \n Capacity: 10 SVD-A series \n Fire Modes: Semi-Auto, select-fire",  
      imagePath: "assets/images/snipers/SVD_Dragunov.jpg", 
      price: 379000, 
      category: Categories.snipers
    ),
  ];

  List<ItemsForSale> get order => _list;
  List<Cart> get cart => _cart;

  final List<Cart> _cart = [];

//add to Cart
  void addToCart(ItemsForSale itemsForSale){
    Cart? cart = _cart.firstWhereOrNull((items) {
      bool isSameItem = items.itemsForSale == itemsForSale;
      
      return isSameItem;
    });

    if (cart != null){
      cart.quantity++;
    }

    else{
      _cart.add(
        Cart(
          itemsForSale: itemsForSale
        ),
      );
    }
    notifyListeners();
  }
//remove from Cart
  void removeFromCart(Cart cart){
    int cartIndex = _cart.indexOf(cart);

    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }
      else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
// total Price
  double getTotalPrice(){
    double total = 0.0;

    for (Cart cart in _cart){
      double itemTotal = cart.itemsForSale.price;

      total += itemTotal * cart.quantity;
    }
    return total;
  }
//total Item
  int getTotalItem(){
    int totalItemCount = 0;

    for (Cart cart in _cart){
      totalItemCount += cart.quantity;
    }

    return totalItemCount;
  }
//clear Cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }  

//Receipt
  String displayReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here is you receipt");
    receipt.writeln();

    String formatDate = 
      DateFormat('yyyy-MM-dd HH-mm-ss').format(DateTime.now());
    
    receipt.write("Date: ");
    receipt.writeln(formatDate);
    receipt.writeln();

    receipt.writeln("Products Bought:");
    for (final cart in _cart){
      receipt.writeln(
        "${cart.quantity} x ${cart.itemsForSale.name} - ${__formatPrice(cart.itemsForSale.price)}"
      );
      receipt.writeln();
    }

    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItem()}");
    receipt.writeln("Total Price: ${__formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Thank you for purchasing to our Hyunwel's Market");

    return receipt.toString();
  }
//value to Money
  String __formatPrice(double price){
    return "${price.toStringAsFixed(2)} php";
  }

}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_flutter_app/models/place_model.dart';



//eat, sleep, routes
//eat --> restaurant, bar, cateteries

class FirestoreService {
  Firestore _db = Firestore.instance;

  Future saveProduct(Product product) {
    print('SAVING OBJECT');
    //TODO: we could have another document called (for example) recommendations, best rated, etc
        return _db
        .collection('fodddddddie')
        .document(product.productId)
        .setData(product.toMap());
//    return _db
//        .collection('eat')
//        .document('places')
//        .collection('restaurant')
//        .document('La Plaça')
//        .setData(product.toMap());
  }

  Stream getProducts() {
    return _db.collection('products').snapshots().map((snapshot) => snapshot
        .documents
        .map((document) => Product.fromFirestore(document.data))
        .toList());
  }

  Future removeProduct(String productId) {
    return _db.collection('products').document(productId).delete();
  }
}


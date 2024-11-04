import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path/path.dart' as path;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:cloud_firestore/cloud_firestore.dart';

class StorageService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> uploadImage(String imagePath, String userId) async {
    try {
      final fileName = path.basename(imagePath);
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final storagePath = 'images/$userId/$timestamp\_$fileName';

      if (kIsWeb) {
        // Web implementation using Firestore
        await _firestore.collection('images').add({
          'userId': userId,
          'imagePath': imagePath,
          'timestamp': timestamp,
          'fileName': fileName,
        });
      } else {
        // Mobile implementation
        await _firestore.collection('images').add({
          'userId': userId,
          'imagePath': imagePath,
          'timestamp': timestamp,
          'fileName': fileName,
        });
      }
    } catch (e) {
      print('Error uploading image: $e');
      rethrow;
    }
  }
}
// User.swift
struct User {
    var id: String
    // Add other properties as needed
}

// UserAuth.swift
import FirebaseAuth

class UserAuth: ObservableObject {
    @Published var user: User?
    
    func listen() {
        Auth.auth().addStateDidChangeListener { auth, firebaseUser in
            if let firebaseUser = firebaseUser {
                self.user = User(id: firebaseUser.uid)
                // Additional logic for admin
            } else {
                self.user = nil
            }
        }
    }
}

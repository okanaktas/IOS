import Foundation

protocol UserRepositoryProtocol {
    func fetchUsers() async throws -> [User]
    func fetchUser(id: Int) async throws -> User
}

final class UserRepository: UserRepositoryProtocol {
    private let networkManager: NetworkManager
    
    init(networkManager: NetworkManager = .shared) {
        self.networkManager = networkManager
    }
    
    func fetchUsers() async throws -> [User] {
        return try await networkManager.fetch("/users")
    }
    
    func fetchUser(id: Int) async throws -> User {
        return try await networkManager.fetch("/users/\(id)")
    }
} 
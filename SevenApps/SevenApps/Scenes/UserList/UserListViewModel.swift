import Foundation

final class UserListViewModel {
    private let repository: UserRepositoryProtocol
    private(set) var users: [User] = []
    
    var onUsersUpdated: (() -> Void)?
    var onError: ((String) -> Void)?
    
    init(repository: UserRepositoryProtocol = UserRepository()) {
        self.repository = repository
    }
    
    @MainActor
    func fetchUsers() {
        Task {
            do {
                users = try await repository.fetchUsers()
                onUsersUpdated?()
            } catch {
                onError?(error.localizedDescription)
            }
        }
    }
    
    func user(at index: Int) -> User {
        return users[index]
    }
} 
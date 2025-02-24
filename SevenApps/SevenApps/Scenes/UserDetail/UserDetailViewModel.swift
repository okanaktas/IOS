import Foundation

final class UserDetailViewModel {
    private let repository: UserRepositoryProtocol
    private(set) var user: User
    
    var onUserUpdated: (() -> Void)?
    var onError: ((String) -> Void)?
    
    init(user: User, repository: UserRepositoryProtocol = UserRepository()) {
        self.user = user
        self.repository = repository
    }
    
    @MainActor
    func refreshUserData() {
        Task {
            do {
                user = try await repository.fetchUser(id: user.id)
                onUserUpdated?()
            } catch {
                onError?(error.localizedDescription)
            }
        }
    }
} 
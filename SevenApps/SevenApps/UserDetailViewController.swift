import UIKit

class UserDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        title = "User Detail"
        view.backgroundColor = .white
    }
} 
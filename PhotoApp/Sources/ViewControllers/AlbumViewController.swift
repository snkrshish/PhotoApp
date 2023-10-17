import UIKit

class AlbumViewController: UIViewController {
    //MARK: - Outles




    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        navigationControllerSetting()
    }



    //MARK: - Setup
    func navigationControllerSetting() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"),
                                                           style: .plain,
                                                           target: nil,
                                                           action: nil)
        title = "Albums"
    }

    func setupHierarchy() {

    }

    func setupLayout() {

    }
}


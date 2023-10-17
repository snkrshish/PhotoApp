import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabBarController = UITabBarController()
        let navigationController = UINavigationController(rootViewController: AlbumViewController())
        setupTabBarController(controller: tabBarController)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func setupTabBarController(controller: UITabBarController) {
        let first = OtherViewController()
        let firstIcon = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.on.rectangle"), selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        first.tabBarItem = firstIcon
        let firstNavigationController = UINavigationController(rootViewController: first)

        let second = OtherViewController()
        let secondIcon = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
        second.tabBarItem = secondIcon
        let secondNavigationController = UINavigationController(rootViewController: second)

        let third = AlbumViewController()
        let thirdIcon = UITabBarItem(title: "Album", image: UIImage(systemName: "rectangle.stack"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        third.tabBarItem = thirdIcon
        let thirdNavigationController = UINavigationController(rootViewController: third)

        let fourth = OtherViewController()
        let fourthIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass.fill"))
        fourth.tabBarItem = fourthIcon
        let fourthNavigationController = UINavigationController(rootViewController: fourth)

        let controllers = [firstNavigationController, secondNavigationController, thirdNavigationController, fourthNavigationController]

        controller.tabBar.backgroundColor = .white
        controller.tabBar.tintColor = .systemBlue
        controller.setViewControllers(controllers, animated: true)
    }
}


import UIKit
import SnapKit

class AlbumViewController: UIViewController {
    //MARK: - Outles
    lazy private var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collection.register(MyAlbumsCollectionViewCell.self, forCellWithReuseIdentifier: MyAlbumsCollectionViewCell.myAlbumsIdentifier)
        collection.register(MediaTypesCollectionViewCell.self, forCellWithReuseIdentifier: MediaTypesCollectionViewCell.identtifier)
        collection.register(HeaderCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionViewCell.identifier)
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()



    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        navigationControllerSetting()

    }

//MARK: - Create Layout
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (section, _) -> NSCollectionLayoutSection in
            switch section {
            case 0:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                   leading: 10,
                                                                   bottom: 10,
                                                                   trailing: 10)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1 / 2.2),
                    heightDimension: .fractionalHeight(1 / 1.7)
                )

                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                    leading: 0,
                                                                    bottom: 10,
                                                                    trailing: 0)

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .groupPaging

                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 10,
                                                                      trailing: 5)

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.95),
                    heightDimension: .estimated(35)
                )

                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )

                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]

                return layoutSection

            case 1:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                   leading: 10,
                                                                   bottom: 10,
                                                                   trailing: 10)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1 / 3.3)
                )

                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                    leading: 0,
                                                                    bottom: 10,
                                                                    trailing: 0)

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .groupPaging

                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 10,
                                                                      trailing: 5)

                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.95),
                    heightDimension: .estimated(35)
                )

                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )

                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]

                return layoutSection

            case 2:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                                   leading: 0,
                                                                   bottom: 5,
                                                                   trailing: 0)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(40)
                )
                let layoutGroup = NSCollectionLayoutGroup.vertical(
                    layoutSize: groupSize,
                    subitems: [layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)

                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 10,
                                                                      trailing: 5)
                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.95),
                    heightDimension: .estimated(35)
                )

                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )

                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]

                return layoutSection

            default:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                                   leading: 0,
                                                                   bottom: 5,
                                                                   trailing: 0)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .estimated(40)
                )
                let layoutGroup = NSCollectionLayoutGroup.horizontal(
                    layoutSize: groupSize,
                    subitems: [layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)

                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 10,
                                                                      leading: 0,
                                                                      bottom: 10,
                                                                      trailing: 5)
                let layoutSectionHeaderSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(0.95),
                    heightDimension: .estimated(35)
                )

                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )

                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]

                return layoutSection
            }
        }
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
        view.addSubview(collectionView)
    }

    func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.top.leading.trailing.bottom.equalTo(additionalSafeAreaInsets)
        }
    }
}


    //MARK: - Extension
extension AlbumViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        PhotoModel.modelsArray.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        PhotoModel.modelsArray[section].count
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        switch indexPath.section {
        case 0:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell
            header?.title.text = "My Albums"
            return header ?? HeaderCollectionViewCell()
        case 1:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell
            header?.title.text = "People And Places"
            return header ?? HeaderCollectionViewCell()
        case 2:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell
            header?.title.text = "Media Types"
            return header ?? HeaderCollectionViewCell()
        default:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell
            header?.title.text = "Utilities"
            return header ?? HeaderCollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsCollectionViewCell.myAlbumsIdentifier, for: indexPath) as? MyAlbumsCollectionViewCell
            item?.configuration(model: PhotoModel.modelsArray[indexPath.section][indexPath.item])
            return item ?? UICollectionViewCell()
        case 1:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsCollectionViewCell.myAlbumsIdentifier, for: indexPath) as? MyAlbumsCollectionViewCell
            item?.configuration(model: PhotoModel.modelsArray[indexPath.section][indexPath.item])
            return item ?? UICollectionViewCell()
        case 2:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MediaTypesCollectionViewCell.identtifier, for: indexPath) as? MediaTypesCollectionViewCell
            item?.configuration(model: PhotoModel.modelsArray[indexPath.section][indexPath.item])
            return item ?? UICollectionViewCell()
        default:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MediaTypesCollectionViewCell.identtifier, for: indexPath) as? MediaTypesCollectionViewCell
            item?.configuration(model: PhotoModel.modelsArray[indexPath.section][indexPath.item])
            return item ?? UICollectionViewCell()
        }
    }
}

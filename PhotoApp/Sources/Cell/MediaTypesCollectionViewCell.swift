import UIKit
import SnapKit

class MediaTypesCollectionViewCell: UICollectionViewCell {

    static let identtifier = "MediaTypesCollectionViewCell"

    //MARK: - Outles

    private lazy var mainTitle: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var leftImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    private lazy var imageCount: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()

    lazy var stripView: UILabel = {
        let label = UILabel()
        label.backgroundColor = .lightGray
        return label
    }()

    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Configuration
    func configuration(model: PhotoModel) {
        self.mainTitle.text = model.title
        self.imageCount.text = String(Int.random(in: 0...500))
        self.leftImage.image = UIImage(systemName: model.image ?? "")
    }
    
    //MARK: - Setup
    private func setupHierarchy() {
        contentView.addSubview(mainTitle)
        contentView.addSubview(leftImage)
        contentView.addSubview(imageCount)
        contentView.addSubview(stripView)
    }

    private func setupLayout() {
        leftImage.snp.makeConstraints {
            $0.leading.equalTo(contentView)
            $0.centerY.equalTo(contentView)
        }

        mainTitle.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(35)
            $0.top.bottom.equalTo(contentView)
        }

        imageCount.snp.makeConstraints {
            $0.trailing.equalTo(contentView)
            $0.top.bottom.equalTo(contentView)
        }

        stripView.snp.makeConstraints {
            $0.height.equalTo(0.5)
            $0.bottom.equalTo(contentView)
            $0.leading.equalTo(contentView).offset(35)
            $0.trailing.equalTo(contentView)
        }
    }

}

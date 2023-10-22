import UIKit
import SnapKit

class MyAlbumsCollectionViewCell: UICollectionViewCell {

    static let myAlbumsIdentifier = "AlbumCell"

    //MARK: - Outles
    lazy private var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.layer.cornerRadius = 5
        return image
    }()

    lazy private var perceentLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    lazy private var countPhoto: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    lazy private var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        return stack
    }()

    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeirarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


    //MARK: - Setup
    private func setupHeirarchy() {
        addSubview(mainStack)
        mainStack.addArrangedSubview(image)
        mainStack.addArrangedSubview(perceentLabel)
        mainStack.addArrangedSubview(countPhoto)
    }

    private func setupLayout() {
        mainStack.snp.makeConstraints {
            $0.top.leading.bottom.trailing.equalTo(contentView)
            $0.width.equalTo(150)
            $0.height.equalTo(170)
        }
    }
    //MARK: - Configuration cell

    func configuration(model: PhotoModel) {
        self.image.image = UIImage(named: model.image ?? "")
        self.perceentLabel.text = model.title
        self.countPhoto.text = String(Int.random(in: 0...5000))
    }
    //MARK: - PrepareForReuse
    override func prepareForReuse() {
        self.image.image = nil
    }
}

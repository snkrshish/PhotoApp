import UIKit


class HeaderCollectionViewCell: UICollectionReusableView {

    static let identifier = "Header"

    //MARK: - Outles

    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
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
        clipsToBounds = true
        setupHierarchy()
        setupLayout()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }



    //MARK: - Setup
    private func setupHierarchy() {
        addSubview(title)
        addSubview(stripView)
    }

    private func setupLayout() {
        title.snp.makeConstraints {
            $0.bottom.equalTo(self)
            $0.leading.equalTo(self)
        }

        stripView.snp.makeConstraints {
            $0.width.top.equalTo(self)
            $0.height.equalTo(0.3)
        }
    }


    //MARK: - PrepareForReuse

    override func prepareForReuse(){
        super.prepareForReuse()
        title.text = nil
    }

}

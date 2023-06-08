import UIKit

class TextWithRating: UITableViewCell {
    
    private let label = UILabel()
    private let starStackView = UIStackView()
    private var rating = 0
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        contentView.addSubview(starStackView)
        starStackView.translatesAutoresizingMaskIntoConstraints = false
        starStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        starStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        for i in 1...5 {
            let starButton = UIButton()
            starStackView.addArrangedSubview(starButton)
            starButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                starButton.widthAnchor.constraint(equalToConstant: 24),
                starButton.heightAnchor.constraint(equalToConstant: 24)
            ])
            
            let emptyStarImage = UIImage(systemName: "star")
            let filledStarImage = UIImage(systemName: "star.fill")
            starButton.setImage(emptyStarImage, for: .normal)
            starButton.setImage(filledStarImage, for: .selected)
            starButton.tag = i
            starButton.addTarget(self, action: #selector(starButtonTapped(sender:)), for: .touchUpInside)
        }

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text: String) {
        label.text = text
    }
    
    @objc private func starButtonTapped(sender: UIButton) {
        rating = sender.tag
        for i in 1...5 {
            if let starButton = contentView.viewWithTag(i) as? UIButton {
                starButton.isSelected = i <= rating
            }
        }
        print("Selected rating: \(rating)")
    }


}

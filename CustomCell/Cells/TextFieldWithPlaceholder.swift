import UIKit

class TextFieldWithPlaceholder: UITableViewCell {

    let textField = UITextField()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        // Add the text field to the cell
        contentView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        textField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        textField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true

        // Set the placeholder text and other properties of the text field
        textField.placeholder = "Enter Text Here"
        textField.borderStyle = .none
        textField.autocorrectionType = .no

        selectionStyle = .none
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(placeHolderText: String) {
        textField.placeholder = placeHolderText
    }
}

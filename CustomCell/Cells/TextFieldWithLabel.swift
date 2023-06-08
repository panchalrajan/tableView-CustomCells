import UIKit

class TextFieldWithLabel: UITableViewCell {
    
    let label = UILabel()
    let textField = UITextField()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // add label to the cell
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 2/5).isActive = true
        
        // add text field to the cell
        contentView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        textField.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/5).isActive = true
        
        // set label text
        label.text = "Label Text"
        textField.autocorrectionType = .no
        
        selectionStyle = .none

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(labelText: String) {
        label.text = labelText
        textField.placeholder = labelText
    }
}


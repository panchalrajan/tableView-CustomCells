import UIKit

class TextWithAlert: UITableViewCell {
    
    private let label = UILabel()
    private var alertTitle: String?
    private var alertMessage: String?
    private var alertButtonTitle: String?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
        
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text: String, title: String?, message: String?, buttonTitle: String?) {
        label.text = text
        alertTitle = title
        alertMessage = message
        alertButtonTitle = buttonTitle
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            presentAlert()
        }
    }
    
    private func presentAlert() {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: alertButtonTitle, style: .default, handler: nil)
        alert.addAction(action)
        if let viewController = self.parentViewController {
            viewController.present(alert, animated: true, completion: nil)
        }
    }
    
    private var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder?.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}


import UIKit

class TextWithToggleButton: UITableViewCell {
    
    private let label = UILabel()
    private let toggleButton = UISwitch()
    
    var toggleButtonState: Bool {
        get {
            return toggleButton.isOn
        }
        set {
            toggleButton.isOn = newValue
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 5/7).isActive = true

        contentView.addSubview(toggleButton)
        toggleButton.translatesAutoresizingMaskIntoConstraints = false
        toggleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        toggleButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        toggleButton.addTarget(self, action: #selector(toggleButtonTapped), for: .valueChanged)
        
        selectionStyle = .none

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text: String, toggleButtonState: Bool) {
        label.text = text
        self.toggleButtonState = toggleButtonState
    }
    
    @objc private func toggleButtonTapped() {
        if toggleButtonState {
            print("on")
        } else {
            print("off")
        }
    }
}

import UIKit

class TextWithStepper: UITableViewCell {
    
    private let label = UILabel()
    private let valueLabel = UILabel()
    private let stepper = UIStepper()
    
    var onValueChange: ((Double) -> Void)?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        contentView.addSubview(valueLabel)
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        valueLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        contentView.addSubview(stepper)
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        stepper.trailingAnchor.constraint(equalTo: valueLabel.leadingAnchor, constant: -8).isActive = true
        
        stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
        
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text: String, value: Double = 0) {
        label.text = text
        valueLabel.text = String(value)
        stepper.value = value
    }
    
    @objc private func stepperValueChanged() {
        let value = stepper.value
        valueLabel.text = String(value)
        onValueChange?(value)
    }
}
    
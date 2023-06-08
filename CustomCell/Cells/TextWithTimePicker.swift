import UIKit

class TextWithTimePicker: UITableViewCell {

    private let label = UILabel()
    private let timePicker = UIDatePicker()
    private var dateFormatter = DateFormatter()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 4/7).isActive = true

        contentView.addSubview(timePicker)
        timePicker.translatesAutoresizingMaskIntoConstraints = false
        timePicker.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -16).isActive = true
        timePicker.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        timePicker.datePickerMode = .time
        timePicker.addTarget(self, action: #selector(timePickerValueChanged), for: .valueChanged)
        
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with text : String) {
        let now = Date()
        timePicker.date = now
        label.text = text
    }
    
    @objc private func timePickerValueChanged() {
        print(dateFormatter.string(from: timePicker.date))
    }
}

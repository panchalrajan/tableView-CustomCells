import UIKit

class TextWithDateAndTimePicker: UITableViewCell {

    private let label = UILabel()
    private let datePicker = UIDatePicker()
    private var dateFormatter = DateFormatter()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short

        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 4/7).isActive = true

        contentView.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -16).isActive = true
        datePicker.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        datePicker.datePickerMode = .dateAndTime
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)

        selectionStyle = .none
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with text: String) {
        let today = Date()
        datePicker.date = today
        label.text = text
    }

    @objc private func datePickerValueChanged() {
        print(dateFormatter.string(from: datePicker.date))
    }
}


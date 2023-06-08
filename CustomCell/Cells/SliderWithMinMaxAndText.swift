import UIKit

class SliderWithMinMaxAndText: UITableViewCell {
    
    let slider = UISlider()
    let label = UILabel()
    let fixedTextLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // add slider to the cell
        contentView.addSubview(slider)
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        slider.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        slider.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 4/7).isActive = true
        
        // add min/max value label to the cell
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        // add fixed text label to the cell
        contentView.addSubview(fixedTextLabel)
        fixedTextLabel.translatesAutoresizingMaskIntoConstraints = false
        fixedTextLabel.leadingAnchor.constraint(equalTo: slider.trailingAnchor, constant: 8).isActive = true
        fixedTextLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        fixedTextLabel.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -8).isActive = true
        
        // set label text
        label.text = ""
        fixedTextLabel.text = ""
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(minValue: Float, maxValue: Float, fixedText: String) {
        slider.minimumValue = minValue
        slider.maximumValue = maxValue
        label.text = "\(Int(slider.value)) \(fixedText)"
    }
    
    @objc func sliderValueChanged() {
        let sliderValue = slider.value
        let valueText = "\(Int(sliderValue)) sec later"
        label.text = valueText
    }

}

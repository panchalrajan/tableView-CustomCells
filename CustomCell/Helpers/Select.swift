import UIKit

class Select {
    
    static func defaultCell(for tableView: UITableView, indexPath: IndexPath, text: String) -> DefaultCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath) as! DefaultCell
        cell.configure(with: text)
        return cell
    }
    
    static func textFieldWithArrowIcon(for tableView: UITableView, indexPath: IndexPath, text: String) -> TextWithArrowIcon {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithArrowIcon", for: indexPath) as! TextWithArrowIcon
        cell.configure(with: text)
        return cell
    }
    
    static func textFieldWithLabelCell(for tableView: UITableView, indexPath: IndexPath, label: String) -> TextFieldWithLabel {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldWithLabel", for: indexPath) as! TextFieldWithLabel
        cell.configure(labelText: label)
        return cell
    }
    
    static func sliderWithMinMaxAndText(for tableView: UITableView, indexPath: IndexPath, minValue: Float, maxValue: Float, fixedText: String) -> SliderWithMinMaxAndText {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SliderWithMinMaxAndText", for: indexPath) as! SliderWithMinMaxAndText
        cell.configure(minValue: minValue, maxValue: maxValue, fixedText: fixedText)
        return cell
    }
    
    static func textFieldWithPlaceholderCell(for tableView: UITableView, indexPath: IndexPath, placeHolder: String) -> TextFieldWithPlaceholder {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldWithPlaceholder", for: indexPath) as! TextFieldWithPlaceholder
        cell.configure(placeHolderText: placeHolder)
        return cell
    }
    
    static func textWithToggleButton(for tableView: UITableView, indexPath: IndexPath, text: String, toggleButtonState: Bool) -> TextWithToggleButton {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithToggleButton", for: indexPath) as! TextWithToggleButton
        cell.configure(with: text, toggleButtonState: true)
        return cell
    }
    
    static func textWithDatePicker(for tableView: UITableView, indexPath: IndexPath, text: String) -> TextWithDatePicker {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithDatePicker", for: indexPath) as! TextWithDatePicker
        cell.configure(with: text)
        return cell
    }
    
    static func textWithTimePicker(for tableView: UITableView, indexPath: IndexPath, text: String) -> TextWithTimePicker {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithTimePicker", for: indexPath) as! TextWithTimePicker
        cell.configure(with: text)
        return cell
    }
    
    static func textWithDateAndTimePicker(for tableView: UITableView, indexPath: IndexPath, text: String) -> TextWithDateAndTimePicker {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithDateAndTimePicker", for: indexPath) as! TextWithDateAndTimePicker
        cell.configure(with: text)
        return cell
    }
    
    static func textAndImageWithArrowIcon(for tableView: UITableView, indexPath: IndexPath, imageName: String, text: String) -> TextAndImageWithArrowIcon {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextAndImageWithArrowIcon", for: indexPath) as! TextAndImageWithArrowIcon
        cell.configure(with: imageName, text: text)
        return cell
    }
    
    static func textWithColoredBadge(for tableView: UITableView, indexPath: IndexPath, text: String, color: UIColor) -> TextWithColoredBadge {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithColoredBadge", for: indexPath) as! TextWithColoredBadge
        cell.configure(with: text, color: color)
        return cell
    }
    
    static func textWithColoredBackground(for tableView: UITableView, indexPath: IndexPath, text: String, color: UIColor) -> TextWithColoredBackground {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithColoredBackground", for: indexPath) as! TextWithColoredBackground
        cell.configure(with: text, color: color)
        return cell
    }
    
    static func textWithStepper(for tableView: UITableView, indexPath: IndexPath, text: String, value: Double) -> TextWithStepper {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithStepper", for: indexPath) as! TextWithStepper
        cell.configure(with: text, value: value)
        return cell
    }
    
    static func textWithAlert(for tableView: UITableView, indexPath: IndexPath, text: String, title: String?, message: String?, buttonTitle: String?) -> TextWithAlert {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithAlert", for: indexPath) as! TextWithAlert
        cell.configure(with: text, title: title, message: message, buttonTitle: buttonTitle)
        return cell
    }
    
    static func textWithRating(for tableView: UITableView, indexPath: IndexPath, text: String) -> TextWithRating {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextWithRating", for: indexPath) as! TextWithRating
        cell.configure(with: text)
        return cell
    }
}

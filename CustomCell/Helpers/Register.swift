import UIKit

class Register {
    
    static func registerCells(for tableView: UITableView) {
        tableView.register(DefaultCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.register(TextWithArrowIcon.self, forCellReuseIdentifier: "TextWithArrowIcon")
        tableView.register(TextFieldWithLabel.self, forCellReuseIdentifier: "TextFieldWithLabel")
        tableView.register(SliderWithMinMaxAndText.self, forCellReuseIdentifier: "SliderWithMinMaxAndText")
        tableView.register(TextFieldWithPlaceholder.self, forCellReuseIdentifier: "TextFieldWithPlaceholder")
        tableView.register(TextWithToggleButton.self, forCellReuseIdentifier: "TextWithToggleButton")
        tableView.register(TextWithDatePicker.self, forCellReuseIdentifier: "TextWithDatePicker")
        tableView.register(TextWithTimePicker.self, forCellReuseIdentifier: "TextWithTimePicker")
        tableView.register(TextWithDateAndTimePicker.self, forCellReuseIdentifier: "TextWithDateAndTimePicker")
        tableView.register(TextAndImageWithArrowIcon.self, forCellReuseIdentifier: "TextAndImageWithArrowIcon")
        tableView.register(TextWithColoredBadge.self, forCellReuseIdentifier: "TextWithColoredBadge")
        tableView.register(TextWithColoredBackground.self, forCellReuseIdentifier: "TextWithColoredBackground")
        tableView.register(TextWithStepper.self, forCellReuseIdentifier: "TextWithStepper")
        tableView.register(TextWithAlert.self, forCellReuseIdentifier: "TextWithAlert")
        tableView.register(TextWithRating.self, forCellReuseIdentifier: "TextWithRating")

    }
}

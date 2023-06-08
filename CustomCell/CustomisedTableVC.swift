import UIKit

class CustomisedTableVC: UITableViewController, UITextFieldDelegate  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        self.title = "TableView"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.tableView = UITableView(frame: .zero, style: .insetGrouped)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.layer.cornerRadius = 25
        self.tableView.layer.masksToBounds = true
        self.tableView.rowHeight = 50
        self.tableView.estimatedRowHeight = 50
        Register.registerCells(for: tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 9
        case 1:
            return 5
        case 2:
            return 2
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0 :
                let cell = Select.textFieldWithLabelCell(for: tableView, indexPath: indexPath, label: "Name")
                cell.textField.delegate = self
                return cell
            case 1 :
                let cell = Select.sliderWithMinMaxAndText(for: tableView, indexPath: indexPath, minValue: 5, maxValue: 30, fixedText: "Sec Later")
                return cell
            case 2 :
                let cell = Select.textFieldWithPlaceholderCell(for: tableView, indexPath: indexPath, placeHolder: "Name")
                cell.textField.delegate = self
                return cell
            case 3 :
                let cell = Select.textWithToggleButton(for: tableView, indexPath: indexPath, text: "Toggle", toggleButtonState: true)
                return cell
            case 4 :
                let cell = Select.textWithDatePicker(for: tableView, indexPath: indexPath, text: "Date")
                return cell
            case 5 :
                let cell = Select.textWithTimePicker(for: tableView, indexPath: indexPath, text: "Time")
                return cell
            case 6 :
                let cell = Select.textWithDateAndTimePicker(for: tableView, indexPath: indexPath, text: "Time")
                return cell
            case 7 :
                let cell = Select.textWithStepper(for: tableView, indexPath: indexPath, text: "Steps", value: 0)
                return cell
            case 8 :
                let cell = Select.textWithRating(for: tableView, indexPath: indexPath, text: "Rating")
                return cell
            default:
                let cell = Select.textWithColoredBackground(for: tableView, indexPath: indexPath, text: "Danger", color: .red)
                return cell
            }
        case 1:
            switch indexPath.row {
            case 0 :
                let cell = Select.defaultCell(for: tableView, indexPath: indexPath, text: "Default Cell")
                return cell
            case 1 :
                let cell = Select.textFieldWithArrowIcon(for: tableView, indexPath: indexPath, text: "ArrowHead")
                return cell
            case 2 :
                let cell = Select.textAndImageWithArrowIcon(for: tableView, indexPath: indexPath, imageName: "logo", text: "Cell with Image")
                return cell
            case 3:
                let cell = Select.textWithColoredBadge(for: tableView, indexPath: indexPath, text: "Colored Badge", color: .systemGreen)
                return cell
            default:
                let cell = Select.textWithColoredBackground(for: tableView, indexPath: indexPath, text: "Colored Cell", color: .red)
                return cell
            }
        case 2:
            switch indexPath.row {
            case 0 :
                let cell = Select.textWithAlert(for: tableView, indexPath: indexPath, text: "Alert", title: "Dem Title", message: "A Long Message Here", buttonTitle: "OK")
                return cell
            default:
                return UITableViewCell()
            }
        
        default:
            return UITableViewCell()
        }
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Input Type"
        case 1:
            return "Fixed Type"
        case 2:
            return "Section 3"
        default:
            return nil
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text {
            print("Text entered: \(text)")
        }
    }
}


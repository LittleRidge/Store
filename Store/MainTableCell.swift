import UIKit

class MainTableCell: UITableViewCell {
    
    var amountItem: Int = 0
    
    weak var delegate: Change?

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    func configure(item: Item) {
        name.text = item.name
        price.text = String(item.price)
        amount.text = String(item.amount)
        amountItem = item.amount
    }
    
    @IBAction func decreaseAmount(_ sender: Any) {
            if amountItem <= 0 {
                delegate?.changeAmount(name: name.text ?? "", amount: 0)
            } else {
                amountItem -= 1
                amount.text = String(amountItem)
                delegate?.changeAmount(name: name.text ?? "", amount: amountItem)
            }
        }

    @IBAction func increaseAmount(_ sender: Any) {
        amountItem += 1
        amount.text = String(amountItem)
        delegate?.changeAmount(name: name.text ?? "", amount: amountItem)
    }
    
    @IBAction func addToCart(_ sender: Any) {
    }
    
    func hide(condition: Bool) {
        self.addButton.isHidden = condition
    }
}



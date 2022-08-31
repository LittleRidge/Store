import UIKit

class MainScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var mainTable: UITableView!
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var storeButton: UIButton!
    @IBOutlet weak var totalAmount: UILabel!
    
    var i = StoreItem()
    var amount: Double = 0.0
    var doSomeStuf: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainTable.delegate = self
        self.mainTable.dataSource = self
        mainTable.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        mainTable.register(UINib(nibName: "MainTableCell", bundle: nil), forCellReuseIdentifier: "MainTableCell")
        storeButton.isHidden = !doSomeStuf
        mainButton.isHidden = doSomeStuf
        totalAmount.isHidden = !doSomeStuf
        mainButton.setTitle("Go to Cart", for: .normal)
        storeButton.setTitle("Count total Amount", for: .normal)
        totalAmount.text = "Total cost is \(amount)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        i.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = mainTable.dequeueReusableCell(withIdentifier: "MainTableCell" , for: indexPath ) as? MainTableCell
            else { fatalError() }
        
        cell.configure(item: i.showStore()[indexPath.row])
        cell.delegate = i
        cell.hide(condition: doSomeStuf)

        return cell
    }
    
    @IBAction func mainButtonAction(_ sender: UIButton) {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        let vc = MainScreenViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        vc.doSomeStuf = true
        vc.i = BasketItem()
    }
    
    @IBAction func countTotalAmount(_ sender: UIButton) {
        totalAmount.text = "Total cost is \(i.countAmount())"

    }
}


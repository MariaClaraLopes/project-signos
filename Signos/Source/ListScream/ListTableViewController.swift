import UIKit

class ListTableViewController: UIViewController{
    
    @IBOutlet weak var myTableView: UITableView!
    
    private let signos: [Signos] = SignosFactory.registerSignos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        title = "Signos"
    }
    
    // Metodo padrao para usar segues (amarrações)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueDetailViewController" {
            guard let indexPath = sender as? IndexPath else { return }
            if let detail = segue.destination as? DetailViewController {
                 detail.show(with: signos[indexPath.row])
            }
        }
    }
}

// MARK: - TableViewDataSource
extension ListTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = signos[indexPath.row].name
        return cell
    }
    
}

// MARK: - TableViewDelegate
extension ListTableViewController: UITableViewDelegate {
    func tableView(_: UITableView, didSelectRowAt: IndexPath) {
       performSegue(withIdentifier: "SegueDetailViewController", sender: didSelectRowAt)
    }
}



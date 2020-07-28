import UIKit

class DetailViewController: UIViewController {
    
    var signo: Signos?
    
    
    @IBOutlet weak var imageSigno: UIImageView!
    

    @IBOutlet weak var titleSigno: UILabel!
    
   
    @IBOutlet weak var descriptionSigno: UITextView!
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let safeSigno = signo {
            titleSigno.text = "Características de " + safeSigno.name
            descriptionSigno.text = String(describing: safeSigno.description)
            imageSigno.image = UIImage(named: safeSigno.imageURL!)
            title = safeSigno.name
        }
    }
    
    
    @IBAction func shareButton(_ sender: Any) {
        if let safeSigno = signo, let image = UIImage(named: safeSigno.imageURL!) {
            let items: [UIImage] = [image]
            let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
            present(ac, animated: true)
        } else {
            print("There is no image shere!")
        }
        
    }
    
}



extension DetailViewController {
    func show(with model: Signos) {
        self.signo = model
    }
}

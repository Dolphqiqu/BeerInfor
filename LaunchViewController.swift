import UIKit
class LaunchViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        performSegue(withIdentifier: "introSegue", sender: self)
    }
}

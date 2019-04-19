import UIKit
import Parchment
class PageMenuController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        UIApplication.shared.statusBarView?.backgroundColor = UIColor(hex: mainColor)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Journal"
        var controllerArray : [UIViewController] = []
        let myStylesViewController : MyStylesViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyStyles") as! MyStylesViewController
        myStylesViewController.title = "My Styles"
        controllerArray.append(myStylesViewController)
        let myBrandsViewController : MyBrandsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyBrands") as! MyBrandsViewController
        myBrandsViewController.title = "My Brands"
        controllerArray.append(myBrandsViewController)
        let myPairingsViewController : MyPairingsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyPairings") as! MyPairingsViewController
        myPairingsViewController.title = "My Pairings"
        controllerArray.append(myPairingsViewController)
        let pagingViewController = FixedPagingViewController(viewControllers: controllerArray, options: PageMenuOptions())
        addChildViewController(pagingViewController)
        view.addSubview(pagingViewController.view)
        view.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
    }
}
struct PageMenuTheme: PagingTheme {
    let indicatorColor: UIColor = UIColor.black
    let selectedTextColor: UIColor = UIColor.black
    let textColor: UIColor = UIColor.black
    let backgroundColor: UIColor = UIColor(hex: mainColor)
    let headerBackgroundColor: UIColor = UIColor(hex: mainColor)
}
struct PageMenuOptions: PagingOptions {
    let theme: PagingTheme = PageMenuTheme()
}

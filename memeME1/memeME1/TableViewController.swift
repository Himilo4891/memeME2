import UIKit

class TableViewController: UIViewController, UITabBarControllerDelegate, UITableViewDelegate {
    
    // MARK: - Properties
//    @IBOutlet weak var topToolbar: UIToolbar!
    @IBOutlet weak var tableView: UITableView!
    
    var memes = [Meme]()
    
    // this property is set upon cell selection within the view and is passed to the MemeControllerView
    var selectedMeme: Meme?
    var entryId: Int?
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        tabBarController!.delegate = self
        tableView.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MemeVC" {
            let vc = segue.destination as! ViewController
//            vc.unwindTarget = "unwindToTableView"
            
//            if let selectedMeme = selectedMeme {
//                ViewController.Meme = selectedMeme
////                vc.entryId = entryId
//            }
//        } else if segue.identifier == "MemeDetailVC" {
//            let vc = segue.destination as! MemeDetailViewController
//            if let selectedMeme = selectedMeme {
//                vc.meme = selectedMeme
    
            }
        }
    }

    // MARK: - Actions
//func unwindToTableView(_ unwindSegue: UIStoryboardSegue) {
//     TableView.reloadData()
//    }
    
//import Foundation
//import UIKit
//
//class TableViewController: UIViewController {
//
//    var memes = [Meme]()
//
//    // MARK: Outlets
//  @IBOutlet weak var tableView: UITableView!
//
//    // MARK: Life Cycle
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupTableView()
//        setupNavigationBar()
//        memes = getMemes()
//        tableView.reloadData()
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        setupNavigationBar()
//        memes = getMemes()
//        tableView.reloadData()
//    }
//
//    // Retrive saved memes
//    private func getMemes() -> [Meme] {
//        let object = UIApplication.shared.delegate
//        let appDelegate = object as! AppDelegate
//        return appDelegate.memes
//    }
//
//    // Setup navigation bar
//    private func setupNavigationBar() {
//        navigationController?.isNavigationBarHidden = false
//        self.tabBarController?.tabBar.isHidden = false
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createMeme))
//    }
//
//    // Add the setup for the table view
//    private func setupTableView() {
//        tableView.delegate = self
//        tableView.delegate = self
//    }
//
//   // Call the create meme view controller
//    @objc func createMeme() {
//        let ViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "EditorViewController") as! ViewController
//
//        self.navigationController?.pushViewController(ViewController, animated: true)
//    }
//}
//
//    //MARK: Table View Setup
//
//extension TableViewController: UITableViewDataSource, UITableViewDelegate {
//    // Data Source
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return memes.count
//    }
//
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
////        let meme = memes[(indexPath as NSIndexPath).row]
////
////        cell.memeTitle.text = "\(Meme.topText) ... \(Meme.bottomText)"
////        cell.memeImage.image = Meme.memedImage
////
////        return cell
////    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//           let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell") as? TableViewCell
//           let entry = self.memes.Meme()[(indexPath as NSIndexPath).row]
//
//           // Set the name and image
//           cell!.memeTitle!.text = entry.meme.getTopText()
//           cell!.imageView!.image = entry.meme.getImage()
//
//
//           return cell!
//       }    // Delegate
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        // Grab the DetailVC from Storyboard
//        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//
//        // Populate view controller with data from the selected item
////        ViewController.Meme = Meme[(indexPath as NSIndexPath).row]
//
//        //Present the view controller using navigation
//        self.navigationController!.pushViewController(detailController, animated: true)
//
//    }
//}
//

//
//  DetailViewController.swift
//  memeME1
//
//  Created by abdiqani on 08/01/23.
//
import Foundation
import UIKit
class MemeDetailViewController: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var memeImage: UIImageView!
    
    @IBOutlet weak var memeLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        memeImage.image = meme.getImage()
    }
}

//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        memeImage.image = meme?.getImage()
//        // Do any additional setup after loading the view.
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.memeLabel.text = self.meme.name
//        self.tabBarController?.tabBar.isHidden = true
//        self.memeImage!.image = UIImage(named: meme.imageName)
//
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        self.tabBarController?.tabBar.isHidden = false
//    }
//}


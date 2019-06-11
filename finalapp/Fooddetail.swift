//
//  Fooddetail.swift
//  finalapp
//
//  Created by EA on 2019/6/10.
//  Copyright © 2019 EA. All rights reserved.
//

import UIKit

class Fooddetail: UIViewController {

    @IBOutlet weak var foodimg: UIImageView!
    @IBOutlet weak var foodname: UITextField!
    @IBOutlet weak var foodaddress: UITextView!
    @IBOutlet weak var foodintro: UITextView!
    var food:Food?
    override func viewDidLoad() {
        super.viewDidLoad()
            foodimg.image = UIImage(named:food?.imgname ?? "NO")
            foodname.text = food?.name
            foodaddress.text = food?.address
            foodintro.text = food?.intro
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mapseg"
        {
            let secondVC = segue.destination as! NaviMap
            secondVC.x = food?.x ?? 0
            secondVC.y = food?.y ?? 0
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  Photowall.swift
//  finalapp
//
//  Created by EA on 2019/6/10.
//  Copyright © 2019 EA. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class Photowall: UICollectionViewController  {

    var photowall = [photo(name: "三峽祖師廟"), photo(name:"三峽老街夜景") , photo(name:"鳶山夕陽"), photo(name:"瀑布") , photo(name:"瀑布2"),photo(name:"鳶山夕陽"), photo(name:"瀑布") , photo(name:"瀑布2"),photo(name:"鳶山夕陽"), photo(name:"瀑布") , photo(name:"瀑布2"),photo(name: "三峽祖師廟"), photo(name:"三峽老街夜景") , photo(name:"鳶山夕陽")]
    
    @IBOutlet var collectionview: UICollectionView!
    @IBOutlet weak var flowlayout: UICollectionViewFlowLayout!
    let fullScreenSize = UIScreen.main.bounds.size
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        flowlayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        flowlayout.itemSize = CGSize(width: fullScreenSize.width/2-10, height: 100)
        flowlayout.minimumLineSpacing = 5
        flowlayout.scrollDirection = .vertical
        flowlayout.headerReferenceSize = CGSize( width: fullScreenSize.width, height: 40)

    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photowall.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photocell", for: indexPath) as! photocell
        let tempimg = UIImage(named: photowall[indexPath.row].name)?.crop(ratio: 1.0)
        cell.photo.image =  tempimg    // Configure the cell
        
        return cell
    }


    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
extension UIImage {
    
    //将图片裁剪成指定比例（多余部分自动删除）
    func crop(ratio: CGFloat) -> UIImage {
        //计算最终尺寸
        var newSize:CGSize!
        if size.width/size.height > ratio {
            newSize = CGSize(width: size.height * ratio, height: size.height)
        }else{
            newSize = CGSize(width: size.width, height: size.width / ratio)
        }
        
        ////图片绘制区域
        var rect = CGRect.zero
        rect.size.width  = size.width
        rect.size.height = size.height
        rect.origin.x    = (newSize.width - size.width ) / 2.0
        rect.origin.y    = (newSize.height - size.height ) / 2.0
        
        //绘制并获取最终图片
        UIGraphicsBeginImageContext(newSize)
        draw(in: rect)
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return scaledImage!
    }
}



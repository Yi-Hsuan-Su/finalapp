//
//  FindfoodViewcontroller.swift
//  finalapp
//
//  Created by EA on 2019/6/10.
//  Copyright © 2019 EA. All rights reserved.
//



import UIKit

class FindfoodViewcontroller: UITableViewController {


    var Foods = [Food(name:"厚道飲食店",address: "新北市三峽區長福街10號2樓 營業時間：（周一公休）週二至週日11:00~19:30",x:24.933665,y:121.370258,intro:"科技進步、資訊爆炸的時代，四、五０年代，台灣經濟起飛時期的光景，有著濃厚人情味與樂天知命生活的氛圍，讓走過那時代的人們是格外懷念！為了替三、四年級生等同父執輩的民眾，尋回那一段漸被遺忘的時光，七年級的孫先生特別開設厚道飲食店，將自己鍾愛的老東西運用超過１０年的設計功力打造一間民初復古主題餐館，店外，一部三輪車，搭配排骨飯、雞腿飯、醬筍肉片湯、地骨露等傳統美味，從空間到餐飲都致力讓顧客彷彿進入時光隧道，重溫兒時回憶！與孫先生一樣醉心懷舊台灣的民眾，厚道飲食店值得你參訪！",imgname:"排骨飯"),Food(name:"添財號碳烤三明治" , address: "新北市三峽區國際二街39號  營業時間：早餐系列：08:30-13:30，周二休息 排餐系列：17:00-20:00，僅於假日供應", x:24.942881 , y:121.372084, intro:"美好的一天從早餐開始！炸得酥香的豬排、搭配煎得軟嫩的蛋，再加上烤得軟中帶脆的吐司，咬下去的瞬間可以感受到蛋香與吐司香相融合，豬排的酥脆為柔軟的口感帶來另一種嚼勁與扎實感。添財號自2015年開業，不到一年就已成了北大同學口耳相傳的好味道，不僅位置方便、餐點也讓人想天天去報到！店內的裝潢也頗具特色，用餐座位是小學生的課桌椅，叫號牌則是各種政治人物的諧音（賴親德、金症恩、王斤平）。令人驚奇的是，周末的晚上還有牛排可以吃！", imgname: "三明治") , Food(name: "Ti Jo Kitchen" , address: "新北市三峽區大觀路12-2號 營業時間：11:00-15:00／17:00-21:00，周一店休" , x:24.944312 , y:121.375497 , intro:"裝潢走簡約風搭配上溫暖的黃光，開店才剛滿2年的Ti Jo Kitchen已經擄獲許多學生與特區居民的胃了！主打的「黑咖哩」一入口，微微的辣味喚醒味蕾，緊接著是濃郁的咖哩香、滿溢在整個口腔中。搭配上竹筴魚、唐揚雞、可樂餅、炸豬排等這些常見的日式主食，這樣一份黑咖哩套餐怎能不讓人一口接一口！",imgname: "咖哩" ) , Food(name: "溱洧陶養養生火鍋", address: "新北市樹林區大有路27號 營業時間：11:30-14:30／17:20-22:00，周一店休", x: 24.947104, y: 121.383860, intro: "這間店位於北大特區的末端；縱使如此，這小小的店面卻總能塞滿饕客，靠的是真材實料的好味道！湯底有常見的柴魚大骨、番茄大骨、中藥麻辣等9種可以選擇，在冬季還有提供麻油雞呢！肉品從四隻腳的牛豬羊、兩隻腳的雞，到沒腳的中卷、鯛魚等海鮮類一應俱全，相當新鮮。菜盤則是放滿當季蔬菜，不會有加工食品的蹤跡。而在眼睛所及之處，幾乎都不會有一次性餐具，就連飲料杯也是如此。整桌都以陶瓷器皿來盛裝餐點。從這些細節都能觀察處店家的用心之處，「養生」之名當之無愧。", imgname: "火鍋"), Food(name: "BRAVO普拉伯義大利坊", address: "新北市三峽區大學路200號 營業時間：11:30-21:30", x: 24.946476 , y: 121.372746, intro: "雖然價位偏高，但在學區間林立的義式料理店多以平價路線為主，因此BRAVO先建立了差異性。而能確立一席之地的關鍵，是多樣化的餐點：除了常見的義大利麵之外，還有披薩、甜點能選擇。整體餐點走向中規中矩再帶有一些巧思，例如：披薩上鋪滿鹹豬肉與墨西哥辣椒；而燉飯上的主食，則是雞腿搭配剝皮辣椒！另外，還有炸雞、洋蔥圈、薯條組成的炸物拼盤，帶給疲累的上班族一絲絲撫慰。", imgname: "披薩") , Food(name: "高迪甜點", address: "新北市三峽區國學街16號  營業時間： 周三到周五：17:30-21:00  周六、周日：12:00-14:30、17:30-21:00 ", x: 24.941900, y: 121.373398, intro: "店內空間不大又昏暗，營業時間幾度更改、對外販售時間也不多，但高迪的甜點絕對值得來訪。只能在冬天吃到的草莓塔是許多人的愛：老闆在小小一個塔上，盡其所能地擺上新鮮草莓；而中間的鮮奶油則是由老闆堅持手工製作而成，嘗起來有微微的甜味但不會膩口。    水果捲用的是當季水果和手工的奶油交織而成。就如同草莓塔，自製奶油不會搶了水果的自然甜味，還能讓蛋糕體增添一些濕潤感，相當清爽。       店內還有販售米布丁、蘭姆酒布朗尼、巧克力洋梨塔等等琳瑯滿目的品項。如果怕胖卻又抵擋不了甜食誘惑的你，非常推薦到高迪甜點嘗嘗鮮。", imgname: "甜點") , Food(name: "老虎麵", address: "新北市三峽區愛國路100-4號   營業時間：17:40-賣完為止，不定時店休", x: 24.930783, y: 121.374468, intro: "為什麼叫老虎？因為他的辣，辣到你的整張嘴像被老虎咬到一樣痛！店內的每項餐點幾乎都會放上自製的麻辣醬，而且不能調整辣度。如果是嗜辣的民眾，這間店絕對要放入口袋名單。 一碗老虎麵或老虎餃的碗內都是滿滿的醬，吃完嘴唇可能會腫得像香腸一樣；當你抬頭想拿衛生紙時，老闆也熟練地告訴你「衛生紙在牆上」，看來每個來訪的人都吃得相當狼狽呢！", imgname: "麻辣")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Foods.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodtablecell = tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath) as! foodTableViewCell
            foodtablecell.foodname.text = Foods[indexPath.row].name
            foodtablecell.foodimg.image = UIImage(named: Foods[indexPath.row].imgname)
        return foodtablecell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row = tableView.indexPathForSelectedRow?.row
        let foodDetailVC = segue.destination as! Fooddetail
        foodDetailVC.food = Foods[row!]
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

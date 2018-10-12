//
//  ViewController.swift
//  Filter
//
//  Created by mac on 10/12/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

//  Dữ liệu
let mang = ["AC Unity", "AC Syndicate", "AC Obdyssey", "God of War 4", "Spider-man SP4", "Red Dead Redemption 2"]

class ViewController: UIViewController
{

    //  Ánh xạ
    @IBOutlet weak var tableV: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableV.dataSource = self
        tableV.delegate = self
    }
    
    
    //  Action
    
    @IBAction func bt_Add(_ sender: Any) {
    }
    
    
    @IBAction func btn_Filter(_ sender: Any)
    {
        //  1.  Tạo bảng lựa chọn
        let sheet = UIAlertController(title: "Chọn dòng game", message: nil, preferredStyle: .actionSheet)
        
        //  2.  Thêm lựa chọn
        sheet.addAction(UIAlertAction(title: "Assassin's Creed", style: .default, handler: { (action) in
            //
        }))
        
        
        sheet.addAction(UIAlertAction(title: "Game PS4", style: .default, handler: { (action) in
            //
        }))
        
        
        //  3.  Huỷ
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
            //
        }))
        
        //  4.  Hiện bảng lựa chọn
        self.present(sheet, animated: true, completion: nil)
    }
}



extension UIViewController: UITableViewDataSource, UITableViewDelegate
{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mang.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = mang[indexPath.row]
        
        return cell!
    }
}

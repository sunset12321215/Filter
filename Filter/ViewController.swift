//
//  ViewController.swift
//  Filter
//
//  Created by mac on 10/12/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //  Ánh xạ
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //  Action
    
    @IBAction func bt_Add(_ sender: Any) {
    }
    
    
    @IBAction func btn_Filter(_ sender: Any)
    {
        //  1.  Tạo bảng lựa chọn
        let sheet = UIAlertController(title: "Lựa chọn lọc", message: nil, preferredStyle: .actionSheet)
        
        //  2.  Thêm lựa chọn
        sheet.addAction(UIAlertAction(title: "Lựa chọn 1", style: .default, handler: { (action) in
            //
        }))
        
        
        sheet.addAction(UIAlertAction(title: "Lựa chọn 2", style: .default, handler: { (action) in
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


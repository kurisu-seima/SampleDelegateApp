//
//  ShowLabelViewController.swift
//  SampleApp
//
//  Created by くりすせいま on 2020/09/28.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ShowLabelViewController: UIViewController, ReturnData {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //ボタンを押した時の処理
    @IBAction func nextButton(_ sender: Any) {
        //遷移先のビューコントローラのインスタンスを作成
        let nextView = storyboard?.instantiateViewController(withIdentifier: "Second") as! InputViewController
        //delegateを登録
        nextView.delegate = self
        //画面遷移できるように設定する
        self.present(nextView, animated: true, completion: nil)
    }
    
    //デリゲートメソッドの実装
    func returnData(data: UITextField!) {
        myLabel.text = data.text!
    }
}

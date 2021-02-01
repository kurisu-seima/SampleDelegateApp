//
//  InputViewController.swift
//  SampleApp
//
//  Created by くりすせいま on 2020/09/28.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

//プロトコルを定義
protocol ReturnData {
    func returnData(data: UITextField!)
}

class InputViewController: UIViewController, UITextFieldDelegate {
    
    //テキストフィールドのプロパティ宣言
    @IBOutlet weak var myTextField: UITextField!
    
    //デリゲート先を保持
    var delegate: ReturnData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テキストフィールドのデリゲート先をビューコントローラに指定
        myTextField.delegate = self
    }
    
    //元の画面へ戻る
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        //デリゲート先でデリゲートメソッドを呼び出す
        delegate?.returnData(data: myTextField)
    }
    
    //改行が入力された時のデリゲートメソッド
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードを下げる
        view.endEditing(true)
        //改行は入力しない
        return false
    }
}

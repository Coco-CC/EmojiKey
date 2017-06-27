//
//  ViewController.swift
//  EmojKey
//
//  Created by DIT on 2016/11/29.
//  Copyright © 2016年 Coco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!

    @IBAction func sendItemClick(_ sender: Any) {
        
      
      print(self.textView.getEmoticonString())
        
        
        
        
    }
    fileprivate lazy var emotion : EmotionController = EmotionController {[weak self] (emoticon) in
        self!.insertEmoticonIntotextView(emoticon : emoticon)
        
    }
    fileprivate func insertEmoticonIntotextView(emoticon : Emoticon) {
        self.textView.insertEmoticon(emoticon: emoticon)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textView.inputView = emotion.view
        self.automaticallyAdjustsScrollViewInsets = false;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        textView.becomeFirstResponder()
        
        
    }


}


//
//  TextureViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/12.
//

import UIKit
import AsyncDisplayKit
class TextureViewController: ASDKViewController<ASDisplayNode> {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textNode = ASTextNode()
        textNode.attributedText = NSAttributedString(string: "value")
        self.node.addSubnode(textNode)
        
        // Do any additional setup after loading the view.
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

//
//  ViewController.swift
//  Sound
//
//  Created by maya on 2020/05/12.
//  Copyright © 2020 maya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムサウンドのファイル
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // ドラムタップで呼び出し
    @IBAction func tapDrumButton() {
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生
        drumSoundPlayer.play()
    }

}


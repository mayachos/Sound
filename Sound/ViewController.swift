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
    
    //ドラムを表示する変数
    @IBOutlet var drumButton: UIButton!
    
    //ドラムサウンドのファイル
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // ドラムタップで呼び出し
    @IBAction func touchDownDrumButton() {
        
        //ドラムが鳴る時の画像
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生
        drumSoundPlayer.play()
    }
    
    //タッチが終わる時の画像
    @IBAction func touchUpDrumButton() {
        
        //ドラムが鳴っていない画像
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

}


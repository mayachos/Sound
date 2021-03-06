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
    
    //ピアノを表示する変数
    @IBOutlet var pianoButton: UIButton!
    
    //ギターを表示する変数
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムサウンドのファイル
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノサウンドのファイル
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ギターサウンドのファイル
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

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
    
    @IBAction func touchDownPianoButton() {
           
           //ピアノが鳴る時の画像
           pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
           //ピアノの音を巻き戻す
           pianoSoundPlayer.currentTime = 0
           
           //ピアノの音を再生
           pianoSoundPlayer.play()
       }
    
    @IBAction func touchDownGuitarButton() {
           
           //ギターが鳴る時の画像
           guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
           //ギターの音を巻き戻す
           guitarSoundPlayer.currentTime = 0
           
           //ギターの音を再生
           guitarSoundPlayer.play()
       }
    
    //タッチが終わる時の画像
    @IBAction func touchUpDrumButton() {
        
        //ドラムが鳴っていない画像
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    //タッチが終わる時の画像
    @IBAction func touchUpPianoButton() {
        
        //ドラムが鳴っていない画像
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    //タッチが終わる時の画像
    @IBAction func touchUpGuitarButton() {
        
        //ドラムが鳴っていない画像
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }

}


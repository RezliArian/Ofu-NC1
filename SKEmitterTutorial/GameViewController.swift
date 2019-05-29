//
//  GameViewController.swift
//  SKEmitterTutorial
//
//  Created by Rezli Arian Perdana on 17/05/19.
//  Copyright © 2019 RezL.inc. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class GameViewController: UIViewController {

    var skView: SKView!
    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGameScene()
        bgm()
        segmented.tintColor = #colorLiteral(red: 0.631372549, green: 0.4941176471, blue: 0.8862745098, alpha: 1)
    }
    
    func bgm(){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Bgm", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
        }
        catch{
            print(error)
        }
    }
    
    func ambience(){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ambience2", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
        }
        catch{
            print(error)
        }
    }

    
    func setupGameScene() {
        let scene = GameScene(size: CGSize(width: 1080, height: 1920))
        skView = self.view as? SKView
        skView.presentScene(scene)
    }
    @IBAction func `switch`(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0:
            bgm()
        case 1:
            ambience()
        default:
            break
        }
    }
}

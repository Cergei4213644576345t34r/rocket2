//
//  ViewController.swift
//  roket2
//
//  Created by Сергей Хотянович on 11.10.21.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var rocketContent: UIView!
    @IBOutlet weak var RocketImage: UIImageView!
    @IBOutlet weak var Zapysk: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "launch", ofType: ".mp3")
        let url = URL(fileURLWithPath: path! )
        player = try? AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
    }
    @IBAction func button(_ sender: Any) {
        rocketContent.isHidden = false
        player.play()
        Zapysk.isHidden = true
        let  frame = RocketImage.frame
        RocketImage.frame.origin.y = 1000
        UIView.animate(withDuration: 5.5) { [self] in
            self.RocketImage.frame = frame
        } completion: { [self] (_) in
            self.Zapysk.isHidden = false
        }

    }
    
}


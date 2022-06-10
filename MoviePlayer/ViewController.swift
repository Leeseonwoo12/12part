//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 203a06 on 2022/05/27.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
        
    }
    
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mud/Fireworks.mp4")!
        
        playVideo(url: url)
        
       
    }
    
    private func playVideo(url: NSURL) {
        
        let platerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        platerController.player = player
        
        self.present(platerController, animated: true) {
            player.play()
    }
}

}

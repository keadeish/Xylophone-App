import UIKit
import AudioToolbox
class ViewController: UIViewController {

    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
    
        playSound(soundFileName: soundArray[sender.tag - 1])
    }
    func playSound(soundFileName : String){
   
        if let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav") {
    var mySound: SystemSoundID = 0
    AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
        AudioServicesPlaySystemSound(mySound)
        
    }


}
}

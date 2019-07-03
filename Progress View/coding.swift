import UIKit

   class ViewController2: UIViewController {
   var progressBarTimer: Timer!
    var isRunning = false
     var isRed = false
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func startBtn(_ sender: Any) {
        if(isRunning){
            progressBarTimer.invalidate()
            btn.setTitle("Start", for: .normal)}else {
            btn.setTitle("Stop", for: .normal)
            self.progressBarTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController2.updateProgressView), userInfo: ValueTransformer.self, repeats: true)
           /* if(isRed){
                progressView.progressTintColor = UIColor.blue
                progressView.progressViewStyle = .default
            }else{
                progressView.progressTintColor = UIColor.red
                progressView.progressViewStyle = .default
            }
            isRed = !isRed
             */
       }
        isRunning = !isRunning
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      progressView.progress = 0.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @objc func updateProgressView(){
        progressView.progress += 0.1
        progressView.setProgress(progressView.progress, animated: true)
        if(progressView.progress == 1)
        {
            progressBarTimer.invalidate()
            isRunning = false
            btn.setTitle("Start", for: .normal)
            
        }
        }
        }



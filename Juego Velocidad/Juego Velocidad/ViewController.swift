//
//  ViewController.swift
//  Juego Velocidad
//
//  Created by Developer Cymetria on 18/04/15.
//  Copyright (c) 2015 Mintic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerLaber: UILabel!

    @IBOutlet var scoreLabel: UILabel!
    
    var count = 0
    var seconds = 0
    var timer = NSTimer()
    
    func substractTime(){
        seconds--
        timerLaber.text = "Tiempo : \(seconds) Seg"
        if (seconds == 0){
            timer.invalidate()
            let alerta = UIAlertController(title: "El tiempo termino!!!!", message: "Tu puntaje fue de \(count)", preferredStyle: UIAlertControllerStyle.Alert)
            alerta.addAction(UIAlertAction(
                title: "Quieres volver a intentarlo??",
                style: UIAlertActionStyle.Default,
                handler: {
                    action in self.beginGame()
                })
            )
            presentViewController(alerta, animated: true, completion: nil)
            
        }
    }
    func beginGame(){
        seconds = 30
        count = 0
        timerLaber.text = "Tiempo : \(seconds) Seg"
        scoreLabel.text = "Puntaje : 0"
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("substractTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        count++;
        scoreLabel.text = "Puntaje: \(count)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        beginGame()
        User()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


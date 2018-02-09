//
//  PhotoDetailsViewController.swift
//  Feed
//
//  Created by Kelvin Lui on 2/7/18.
//  Copyright © 2018 Kelvin Lui. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var photoURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.isUserInteractionEnabled = true
        photoImageView.af_setImage(withURL: photoURL)
    }
    
    @IBAction func pinchPhoto(_ sender: UIPinchGestureRecognizer) {
        performSegue(withIdentifier: "pinchSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//
//        let fs = segue.destination as! FullScreenViewController
//        fs.photoImageView.af_setImage(withURL: photoURL)
//
//    }
}

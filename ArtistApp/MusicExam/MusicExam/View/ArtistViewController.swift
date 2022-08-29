//
//  ArtistViewController.swift
//  MusicExam
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class ArtistViewController: UIViewController {

    @IBOutlet weak var titleUILabel: UILabel!
    @IBOutlet weak var descriptionUILabel: UILabel!
    @IBOutlet weak var artistUIImageView: UIImageView!
    var artistImage: UIImage?
    var artistTitle: String?
    var artistDescription: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        artistUIImageView.clipsToBounds = true
        descriptionUILabel.numberOfLines = 4
        artistUIImageView.image = artistImage
        titleUILabel.text = artistTitle
        descriptionUILabel.text = artistDescription
        // Do any additional setup after loading the view.
    }
}

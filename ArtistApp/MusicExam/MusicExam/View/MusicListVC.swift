//
//  MusicListVC.swift
//  MusicExam
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class MusicListVC: UIViewController {
    
    @IBOutlet weak var tableArtists: UITableView!
    var artists: [Artist] = []
    let artistCell = "baseTableViewCell"
    override func viewDidLoad() {
        title = "Artists"
        configureTableView()
        setTableViewDelegates()
        artists = fetchData()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func configureTableView() {
        //adding tableView to VC
        tableArtists.register(UINib(nibName: "BaseTableViewCell", bundle: nil), forCellReuseIdentifier: artistCell)
    }
    func setTableViewDelegates() {
        tableArtists.delegate = self
        tableArtists.dataSource = self
        
    }
}

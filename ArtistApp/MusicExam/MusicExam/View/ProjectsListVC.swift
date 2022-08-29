//
//  ProjectsListVC.swift
//  MusicExam
//
//  Created by Consultant on 8/26/22.
//

import UIKit

class ProjectsListVC: UIViewController {
    @IBOutlet weak var projectsTable: UITableView!
    var projects: [Project] = []
    let projectCell = "baseTableViewCell"
    override func viewDidLoad() {
        configureTableView()
        setTableViewDelegates()
        projects = fetchData()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func configureTableView() {
        //adding tableView to VC
        projectsTable.register(UINib(nibName: "BaseTableViewCell", bundle: nil), forCellReuseIdentifier: projectCell)
    }
    func setTableViewDelegates() {
        projectsTable.delegate = self
        projectsTable.dataSource = self
        
    }

}

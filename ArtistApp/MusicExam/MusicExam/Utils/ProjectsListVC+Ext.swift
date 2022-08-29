//
//  ProjectsListVC+Ext.swift
//  MusicExam
//
//  Created by Consultant on 8/26/22.
//

import UIKit

extension ProjectsListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: projectCell,
                                                 for: indexPath)
        
        if let newCell = cell as? BaseTableViewCell {
            newCell.setupCell(image: projects[indexPath.row].image, title: projects[indexPath.row].title, description: projects[indexPath.row].description )
        }
        
        return cell
    }
}
extension ProjectsListVC {
    func fetchData() -> [Project] {
        let projects = [ Project(id:1, image: ProjectImages.tiktok, title: ProjectNames.tiktok, description: ProjectDescription.tiktok),
                         Project(id:2, image: ProjectImages.instagram, title: ProjectNames.instagram, description: ProjectDescription.instagram),
                         Project(id:3, image: ProjectImages.snapchat, title: ProjectNames.snapchat, description: ProjectDescription.snapchat),
                         Project(id:4, image: ProjectImages.cashApp, title: ProjectNames.cashApp, description: ProjectDescription.cashApp),
                         Project(id:5, image: ProjectImages.zoom, title: ProjectNames.zoom, description: ProjectDescription.zoom),
                         Project(id:6, image: ProjectImages.messenger, title: ProjectNames.messenger, description: ProjectDescription.messenger),
                         Project(id:7, image: ProjectImages.facebook, title: ProjectNames.facebook, description: ProjectDescription.facebook),
                         Project(id:8, image: ProjectImages.whatsApp, title: ProjectNames.whatsApp, description: ProjectDescription.whatsApp),
                         Project(id:9, image: ProjectImages.youTube, title: ProjectNames.youTube, description: ProjectDescription.youTube),
                         Project(id:10, image: ProjectImages.hboMax, title: ProjectNames.hboMax, description: ProjectDescription.hboMax),
        ]
        return projects
    }
}

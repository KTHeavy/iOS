//
//  MusicListVC+Ext.swift
//  ArtistApp
//
//  Created by Consultant on 8/26/22.
//

import UIKit

extension MusicListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: artistCell,
                                                 for: indexPath)
        
        if let newCell = cell as? BaseTableViewCell {
            newCell.setupCell(image: artists[indexPath.row].image, title: artists[indexPath.row].title, description: artists[indexPath.row].description )
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //var vc =  ArtistViewController()
        
        print("La celda #\(indexPath.row) fué seleccionada.")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "artistViewController") as! ArtistViewController
        destination.artistImage = artists[indexPath.row].image
        destination.artistTitle = artists[indexPath.row].title
        destination.artistDescription = artists[indexPath.row].description
        navigationController?.pushViewController(destination, animated: true)
        //self.navigationController?.pushViewController(vc, animated:true)
    }
}
extension MusicListVC {
    func fetchData() -> [Artist] {
        let artists = [ Artist(id:1, image: ArtistImages.beyonce, title: ArtistNames.beyonce, description:          ArtistDescription.beyonce),
                        Artist(id:2, image: ArtistImages.kendrickLamar, title: ArtistNames.kendrickLamar, description: ArtistDescription.kendrickLamar),
                        Artist(id:3, image: ArtistImages.bigSean, title: ArtistNames.bigSean, description: ArtistDescription.bigSean),
                        Artist(id:4, image: ArtistImages.saba, title: ArtistNames.saba, description: ArtistDescription.saba),
                        Artist(id:5, image: ArtistImages.rapsody, title: ArtistNames.rapsody, description: ArtistDescription.rapsody),
                        Artist(id:6, image: ArtistImages.kendrickScott, title: ArtistNames.kendrickScott, description: ArtistDescription.kendrickScott),
                        Artist(id:7, image: ArtistImages.coldplay, title: ArtistNames.coldplay, description: ArtistDescription.coldplay),
                        Artist(id:8, image: ArtistImages.erykahBadu, title: ArtistNames.erykahBadu, description: ArtistDescription.erykahBadu),
                        Artist(id:9, image: ArtistImages.her, title: ArtistNames.her, description: ArtistDescription.her),
                        Artist(id:10, image: ArtistImages.fleetFoxes, title: ArtistNames.fleetFoxes, description: ArtistDescription.fleetFoxes)
        ]
        let newArray = artists.sorted { $0.title ?? "" < $1.title ?? "" }
        return newArray
    }
}

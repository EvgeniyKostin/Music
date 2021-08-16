//
//  SearchViewController.swift
//  Music
//
//  Created by Evgeniy Kostin on 16.08.2021.
//

import UIKit

//создаем модель
struct TrackModel {
    var trackName: String
    var artistName: String
}

//данный экран будет отвечать за поиск треков из internet
class SearchViewController: UITableViewController {
    
    let tracks = [TrackModel(trackName: "bad guy", artistName: "Billie Eilish"),
                 TrackModel(trackName: "bury a friend", artistName: "Billie Eilish")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    //создаем метод numberOfRowsInSection отвечающий за количество ячеек в таблице
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    //создаем метод cellForRowAt отвечающий за настройку конкретной ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "\(track.trackName)\n\(track.artistName)"
        cell.textLabel?.numberOfLines = 2
        cell.imageView?.image = #imageLiteral(resourceName: "Image-1")
        return cell
    }
    
}

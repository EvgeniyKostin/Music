//
//  SearchViewController.swift
//  Music
//
//  Created by Evgeniy Kostin on 16.08.2021.
//

import UIKit

struct TrackModel {
    var trackName: String
    var artistName: String
}

//данный экран будет отвечать за поиск треков из internet
class SearchViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "indexPath: \(indexPath)"
        return cell
    }
    
}

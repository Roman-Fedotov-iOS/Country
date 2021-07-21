//
//  CountryTableViewController.swift
//  Country
//
//  Created by Roman Fedotov on 25.05.2021.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    
    var countries: [Country] = [
        Country (flag: "🇺🇦", name: "Ukraine", region: "Europe", population: "42mio"),
        Country (flag: "🇯🇵", name: "Japan", region: "Asia", population: "126mio"),
        Country (flag: "🇬🇸", name: "New Zealand", region: "Oceania", population: "4.7mio"),
        Country (flag: "🇦🇺", name: "Australia", region: "Oceania", population: "24mio"),
        Country (flag: "🇨🇳", name: "China", region: "Asia", population: "1.3b"),
        Country (flag: "🇬🇪", name: "Georgia", region: "Asia", population: "3.7mio"),
        Country (flag: "🇨🇦", name: "Canada", region: "North America", population: "36.3mio"),
        Country (flag: "🇳🇴", name: "Norway", region: "Scandinavia", population: "3.8mio"),
        Country (flag: "🇮🇳", name: "India", region: "Asia", population: "1.3b"),
        Country (flag: "🇸🇧", name: "Solomom Islands", region: "Micronesia", population: "611k"),
        Country (flag: "🇩🇪", name: "Germany", region: "Europe", population: "82.6mio"),
        Country (flag: "🇰🇬", name: "Kyrgyzstan", region: "Asia", population: "6.2mio"),
        Country (flag: "🇦🇱", name: "Albania", region: "Balkan Peninsula", population: "2.8mio"),
        Country (flag: "🇨🇴", name: "Colombia", region: "South America", population: "48.6mio"),
        Country (flag: "🇦🇪", name: "United Arab Emirates", region: "Asia", population: "9.4mio"),
        Country (flag: "🇦🇹", name: "Austria", region: "Europe", population: "8.8mio"),
        Country (flag: "🇦🇴", name: "Angola", region: "Africa", population: "31.8mio"),
        Country (flag: "🇩🇰", name: "Denmark", region: "Scandinavia", population: "5.8mio")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return countries.count
        }
        else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)

        let country = countries[indexPath.row]
        cell.textLabel?.text = "\(country.flag) - \(country.name)"
        cell.detailTextLabel?.text = country.region
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countries[indexPath.row]
        print("\(country.flag) \(indexPath)")
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedCountry = countries.remove(at: fromIndexPath.row)
        countries.insert(movedCountry, at: to.row)
        tableView.reloadData()
    }

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

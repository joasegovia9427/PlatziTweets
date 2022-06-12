
//
//  ViewControllerTablas.swift
//  PlatziTweets
//
//  Created by Joaquin Segovia on 11/6/22.
//

import UIKit

var cellNameIdentifier = "TweetTableViewCell"

class ViewControllerTablas: UIViewController {
    // MARK: - References de la table
    @IBOutlet weak var tableView: UITableView!

    private var dataSource = [
        "@carlos",
        "@juan",
        "@joaquin",
        "@carla",
        "@carlos",
        "@juan",
        "@joaquin",
        "@carla",
        "@juana"
    ]
    /*
     1. Implementar DataSource <- interfaz
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Este codigo se ejecuta de forma segura luego de que la pantalla se haya cargado al usuario.
        //Si se cargo al usuario, se puede ejecutar este codigo sin problema.
        
        //No olvidar  // Definir el datasource, esta configuración está en el primer extension
        tableView.dataSource = self
        
        // Indicar cuál será la celda que se va mostrar cuando la intente construir
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        tableView.register(UINib(nibName: cellNameIdentifier, bundle: nil), forCellReuseIdentifier: cellNameIdentifier)
        
        //Para interactuar, implementar el delegate // Para interacturar con la celda... está en la segund aextension
        tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource
// Extensión de nuestra clase, que es donde indicaremos la configuración de la tabla
extension ViewControllerTablas: UITableViewDataSource{
    //1. Número de filas que tendrá la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 20
        return dataSource.count
    }
    //2. Metodo para saber que celdas deben mostrarse
    // Configurción de la celda a mostrarse
    // Generalmente no usaremos la celda por defecto de UIKit, pero esto es con fines didácticos
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellNameIdentifier, for: indexPath)
        
        //opcion corta
        //(cell as? TweetTableViewCell)?.setupCell(username: "@usuario\(indexPath.row)", message: "Soy un tweet!")
        //opcion larga
        if let newCell = cell as? TweetTableViewCell{
//            newCell.setupCell(username: "@usuario\(indexPath.row)", message: "Soy un tweet!")
            newCell.setupCell(username: dataSource[indexPath.row], message: "Soy un tweet!")
        }
        
//        cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        return cell
    }
}

// MARK: - UITableViewDelegate
// Extensión donde definimos qué pasará cuando se interactúe con la celda
extension ViewControllerTablas: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda #\(indexPath.row) fue seleccionada")
    }
}

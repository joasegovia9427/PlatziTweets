
//
//  ViewControllerTablas.swift
//  PlatziTweets
//
//  Created by Joaquin Segovia on 11/6/22.
//

import UIKit

class ViewControllerTablas: UIViewController {
    // MARK: - References de la table
    @IBOutlet weak var tableView: UITableView!

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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        
        //Para interactuar, implementar el delegate // Para interacturar con la celda... está en la segund aextension
        tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource
// Extensión de nuestra clase, que es donde indicaremos la configuración de la tabla
extension ViewControllerTablas: UITableViewDataSource{
    //1. Número de filas que tendrá la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    //2. Metodo para saber que celdas deben mostrarse
    // Configurción de la celda a mostrarse
    // Generalmente no usaremos la celda por defecto de UIKit, pero esto es con fines didácticos
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mi-celda", for: indexPath)
        cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
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

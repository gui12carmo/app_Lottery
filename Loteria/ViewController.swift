//
//  ViewController.swift
//  Loteria
//
//  Created by Aluno ISTEC on 12/01/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelInfo: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var labelRandom1: UILabel!
    @IBOutlet weak var labelRandom2: UILabel!
    @IBOutlet weak var labelRandom3: UILabel!
    @IBOutlet weak var labelRandom4: UILabel!
    @IBOutlet weak var labelRandom5: UILabel!
    @IBOutlet weak var labelRandom6: UILabel!
    
    @IBOutlet weak var hiddenImageView: UIImageView!
    @IBOutlet weak var hiddenLabel: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            // Configurar o segmented control para disparar a ação quando mudar
            segmentedControl.addTarget(self, action: #selector(segmentedControlChanged(_:)), for: .valueChanged)
            
            // Inicializar visibilidade das views (no caso, a imagem e label devem estar visíveis inicialmente)
            hiddenLabel.isHidden = false
            hiddenImageView.isHidden = false
        }
        
        // Ação que será chamada quando o segmento do UISegmentedControl for alterado
        @objc func segmentedControlChanged(_ sender: UISegmentedControl) {
            if sender.selectedSegmentIndex == 1 { // Se for a opção 2 (lembre-se que o índice começa do 0)
                // Mudar o texto da labelInfo
                labelInfo.text = "Toto"
                
                // Esconder a hiddenLabel e hiddenImageView
                hiddenLabel.isHidden = true
                hiddenImageView.isHidden = true
            } else {
                // Caso contrário, garantir que o texto da labelInfo não seja alterado
                labelInfo.text = "Euromilhões"
                
                // Garantir que a hiddenLabel e hiddenImageView estejam visíveis
                hiddenLabel.isHidden = false
                hiddenImageView.isHidden = false
            }
        }
        
    // Função para gerar números aleatórios nas labels
        @IBAction func gerarJogo(_ sender: Any){
        labelRandom1.text = "\(Int.random(in: 1...12))"
            labelRandom2.text = "\(Int.random(in: 1...50))"
            labelRandom3.text = "\(Int.random(in: 1...50))"
            labelRandom4.text = "\(Int.random(in: 1...50))"
            labelRandom5.text = "\(Int.random(in: 1...50))"
            labelRandom6.text = "\(Int.random(in: 1...50))"
            hiddenLabel.text = "\(Int.random(in: 1...12))"
        }
    
}



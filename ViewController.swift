
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // button clicked
            print("button clicked")
        }
        alert.addAction(okButton) // ekrandaki hata mesajından çıkış yapılmak için yazıldı
        self.present(alert, animated: true, completion: nil)   // uyarı mesajı yaptık
        */
        
        if usernameText.text == ""{ // username boşsa
            makeAlert(titleInput: "Error!", messageInput: "Username not found")
            
        }else if passwordText.text == ""{ // password boş geldiyse
            makeAlert(titleInput: "Error!", messageInput: "Password not found")

            
        }else if passwordText.text != password2Text.text { // password'ler eşleşmediyse
            makeAlert(titleInput: "Error!", messageInput: "Passwords do not match")

        }else{
            makeAlert(titleInput: "Succes", messageInput: "User OK")
        }
        
    } // tüm hata mesajları içeren function yazdık
    func makeAlert(titleInput:String, messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}


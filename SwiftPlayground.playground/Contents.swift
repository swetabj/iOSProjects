//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        print(label.text!)
        
        swiftBasics()
    }
    
    // Mark:SwitBasics
    
    func swiftBasics() -> Void {
        print("Hello World!")
        var value1 = 30
        value1 = 40
        let implicitIntValue = 30
        let explicitDoubleValue:Double = 20.0
        let label = "The width is"
        
        let width = 40
        let widthLabel = label + " " +  String(width)
        
        let apples = 4
        let oranges = 5
        let fruits = "I have \(apples+oranges) fruits"

        //mutiple line strings
        let fruitSummary = """
        I have \(apples) apples.
        I have \(apples+oranges) fruits
        """
        print(fruitSummary)
        
        //arrays
        var shoppingList = ["Brinjal", "chilli", "bluberry" , "salt"]
        shoppingList[0]
        
        //dict
        var fruitsCountDict = [
            "Apples" : 4,
            "Oranges": 8,
            "Bananas" :10,
            ]
        fruitsCountDict["Grapes"] = 20
        
        //empty array and dict
        let emptyArr = [String]()
        let emptyDict = [String:Float]()
        
        //if type can be infered
        shoppingList = []
        fruitsCountDict = [:]
        
        //Control Flow Statements
        let individualScores = [10,20,30,40,50]
        var teamScore = 0
        
        for score in individualScores {
            if(score>=40) {
                teamScore += 3
            }
            else {
                teamScore += 1
            }
        }
        print(teamScore)
        
        var str1 = "Sweta"
        var str2 = str1
        
        str2 = "Jana"
        print(str1)

        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

import Foundation
import SpriteKit

public class GameText {
    
    public var textLabel = SKLabelNode(fontNamed: "Geneva")
    public var textLabelLine2 = SKLabelNode(fontNamed: "Geneva")
    
    var textValues = ["text1": "Sometimes in life you have obstacles",
                      "text1_2": "that you need to go through",
                      "text2": "Some are more difficult than others",
                      "text2_2": "",
                      "text3": "But sometimes...",
                      "text3_2": "",
                      "text4": "You just can't get through",
                      "text4_2": "But why?",
                      "text5": "TRUE VISION",
                      "text5_2": "Allows you to see what you couldn't",
                      "text6": "This is what really happens",
                      "text6_2": "",
                      "text7": "The most difficult obstacles to pass",
                      "text7_2": "is yourself",
                      "text8": "You in the same time that not allowing",
                      "text8_2": "yourself to pass get hurt by it",
                      "text9": "You are the victim and the aggressor",
                      "text9_2": "",
                      "text10": "Now that you know that you are ",
                      "text10_2": "your own enemy",
                      "text11": "What if you were able to change that?",
                      "text11_2": "",
                      "text12": "How to fight an enemy that is yourself?",
                      "text12_2": "",
                      "text13": "SELF AWARENESS",
                      "text13_2": "Allows you to understand who you really are",
                      "text14": "And by that you shield yourself",
                      "text14_2": "Now that enemy doesn't affect you anymore",
                      "text15": "How much do you know yourself?"]
    
    public init(scene: GameScene) {
        ///Configuração e adição do texto na Tela
        let waitAction = SKAction.wait(forDuration: 2)
        let fadeIn = SKAction.fadeIn(withDuration: 1)
        let sequence = SKAction.sequence([waitAction, fadeIn])
        
        
        self.textLabel.text = self.textValues["text1"]
        self.textLabel.fontSize = 35
        self.textLabel.fontColor = SKColor.brown
        self.textLabel.position = CGPoint(x: scene.frame.size.width*0.25, y: scene.size.height*0.9)
        
        self.textLabel.run(sequence){
            scene.addChild(self.textLabel)
        }
        
        self.textLabelLine2.text = self.textValues["text1"]
        self.textLabelLine2.fontSize = 35
        self.textLabelLine2.fontColor = SKColor.brown
        self.textLabelLine2.position = CGPoint(x: scene.frame.size.width*0.25, y: scene.size.height*0.85)
        
        self.textLabelLine2.run(sequence){
            scene.addChild(self.textLabelLine2)
        }
    }
    
    public init(){}
    
}

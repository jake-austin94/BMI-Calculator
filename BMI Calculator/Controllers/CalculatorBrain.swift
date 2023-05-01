
import  UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}

let greenShade = UIColor(red: 127, green: 124, blue: 130)
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight/(height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        } else {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: greenShade)
        }
        
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    
}

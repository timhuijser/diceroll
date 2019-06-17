class d20: Die {
    private var rolledEyes: Int? = nil
    
    func getNumberOfEyes() -> Int {
        return 20;
    }
    
    func getName() -> String {
        return "d20"
    }
    
    func getRolledEyes() -> Int? {
        return rolledEyes
    }
    
    func roll() -> Int {
        rolledEyes = Int.random(in: 1...getNumberOfEyes())
        
        return rolledEyes!
    }
}

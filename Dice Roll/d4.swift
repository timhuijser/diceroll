class d4: Die {
    private var rolledEyes: Int? = nil
    
    func getNumberOfEyes() -> Int {
        return 4
    }
    
    func getName() -> String {
        return "d4"
    }
    
    func getRolledEyes() -> Int? {
        return rolledEyes
    }
    
    func roll() -> Int {
        rolledEyes = Int.random(in: 1...getNumberOfEyes())
        
        return rolledEyes!
    }
}

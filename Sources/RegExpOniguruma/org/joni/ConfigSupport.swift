
import JavApi

extension org.joni {
  
  open class ConfigSupport {
    static func getBoolean(_ property : String, _ def : Bool) -> Bool {
      let value = System.getProperty(property, def ? "true" : "false")
      return !value.equals("false")
    }
    
    static func getInt(_ property : String, _ def : Int) -> Int {
      if let value = try? System.getProperty(property) {
        if let asInt = Int(value) {
          return asInt
        }
      }
      return def
    }
  }
}

/*
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is furnished to do
 * so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

import JavApi
extension org.joni.ast {
  
  open class Node : org.joni.constants.internals.NodeType, org.joni.ast.AbstractNode {
    public var parent : Node?
    internal var type : Int = 0
    
    init(_ newType : Int) {
      self.type = newType
    }
    
    public final func getType() -> Int {
      return type;
    }
    
    public final func getType2Bit() -> Int {
      return 1 << getType();
    }
    
    internal func setChild(_ tgt : Node){
      // default definition
    }
    
    internal func getChild() -> Node? {
      // default definition
      return nil;
    }
    
    public func replaceWith(_ with : Node) {
      with.parent = parent;
      parent!.setChild(with);
      parent = nil
    }
    
    public func getAddressName() -> String {
      return getName() + ":0x" + Integer.toHexString(System.identityHashCode(self));
    }
    
    public final func toString() -> String {
      var s = ""
      s.append("<" + getAddressName() + " (" + (parent == nil ? "NULL" : parent!.getAddressName())  + ")>");
      return s + toString(0);
    }
    
    internal static func pad(_ value : Any?, _ level : Int) -> String {
      if (value == nil) {
        return "NULL"
      }
      
      var pad = "  "
      for _ in 0..<level {
        pad.append(pad)
      }
      
      let asString = "\(value ?? "")"
      return asString.replace("\n",  "\n" + pad);
    }
    
    public final func isSimple() -> Bool {
      return (getType2Bit() & org.joni.ast.Node.SIMPLE) != 0;
    }
    
    public static func newTop(_ root : Node) -> TopNode {
      return TopNode(root);
    }
    
  }
}

extension org.joni.ast {
  public protocol AbstractNode {
    func getName() -> String
    func toString(_ level : Int) -> String
  }
}

extension org.joni.ast.AbstractNode {
  public func getName() -> String {
    fatalError("abstract method not implemented")
  }
  
  public func toString(_ level : Int) -> String {
    fatalError("abstract method not implemented")
  }
}

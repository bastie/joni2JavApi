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
extension org.joni {
  
  public class Region {
    
    public init () {
      fatalError("abstract class Region")
    }
    
    static let REGION_NOTPOS = -1;
    
    internal var historyRoot : CaptureTreeNode?
    
    public static func newRegion(_ num : Int) throws -> Region {
      if (num == 1) {
        return try SingleRegion(num)
      }
      return MultiRegion(num);
    }
    
    public static func newRegion(_ begin : Int, _ end : Int) -> Region {
      return SingleRegion(begin, end);
    }
    
    public func clone() -> Region {fatalError("abstract class Region")}
    
    public func getNumRegs() -> Int {fatalError("abstract class Region")}
    
    public func getBeg(_ index : Int) throws -> Int {fatalError("abstract class Region")}
    
    public func setBeg(_ index : Int, _ value : Int) throws -> Int {fatalError("abstract class Region")}
    
    public func getEnd(_ index : Int) throws -> Int {fatalError("abstract class Region")}
    
    public func setEnd(_ index : Int, _ value : Int) throws -> Int {fatalError("abstract class Region")}
    
    public func toString() -> String {
      var sb = ""
      sb.append("Region: \n");
      for i in 0..<getNumRegs() {
        sb.append(" \(i): (\(try! getBeg(i))-\(try! getEnd(i))")
      }
      return sb
    }
    
    func getCaptureTree() -> CaptureTreeNode? {
      return historyRoot
    }
    
    func setCaptureTree(_ ctn : CaptureTreeNode) -> CaptureTreeNode? {
      self.historyRoot = ctn
      return self.historyRoot
    }
    
    func clear() {}
  }
}

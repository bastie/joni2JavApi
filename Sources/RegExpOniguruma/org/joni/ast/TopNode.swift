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

extension org.joni.ast {
  // In result of class is final, this is public instead of open
  public class TopNode : Node {
    private var root : Node = Node(-1)
    
    init(_ root : Node) {
      super.init(-1)
      root.parent = self
      setChild(root);
    }
    
    public func getRoot() -> Node{
      return root;
    }
    
    public override func setChild(_ node : Node) {
      node.parent = self
      root = node
    }
    
    public override func getChild() -> Node {
      return root;
    }
    
    public func getName() -> String {
      return "ROOT"
    }
    
    public func toString(_ level : Int) -> String {
      return "\n\(org.joni.ast.TopNode.pad(root, level + 1))"
    }
  }
}

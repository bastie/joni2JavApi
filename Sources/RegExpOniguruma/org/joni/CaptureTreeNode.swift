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

extension org.joni {
  
  final class CaptureTreeNode {
    var group : Int
    var beg : Int
    var end : Int
    // int allocated;
    var numChildren = 0
    var children : [CaptureTreeNode?]?
    
    init() {
      beg = Region.REGION_NOTPOS
      end = Region.REGION_NOTPOS
      group = -1
    }
    
    static let HISTORY_TREE_INIT_ALLOC_SIZE = 8;
    
    func addChild(_ child : CaptureTreeNode) {
      if (children == nil) {
        children = Array (repeating: nil, count: org.joni.CaptureTreeNode.HISTORY_TREE_INIT_ALLOC_SIZE)
      }
      else {
        if (numChildren >= children!.count) {
          var tmp : [CaptureTreeNode?]? = Array(repeating: nil, count: children!.count << 1)
          for i in 0..<children!.count {
            tmp![i] = children![i]
          }
          children = tmp;
        }
      }
      
      children![numChildren] = child
      numChildren += 1
    }
    
    func clear() {
      for i in 0..<numChildren {
        children![i] = nil // ???
      }
      numChildren = 0
      beg = Region.REGION_NOTPOS
      end = Region.REGION_NOTPOS
      group = -1
    }
    
    func cloneTree() -> CaptureTreeNode {
      let clone : CaptureTreeNode = CaptureTreeNode()
      clone.beg = beg
      clone.end = end
      
      for i in 0..<numChildren {
        let child : CaptureTreeNode = children![i]!.cloneTree();
        clone.addChild(child);
      }
      return clone;
    }
  }
}

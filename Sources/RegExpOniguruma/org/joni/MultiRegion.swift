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
  
  public final class MultiRegion : Region {
    private var begEnd : [Int]
    
    public init (_ num : Int) {
      self.begEnd = Array(repeating: 0, count: num * 2)
    }
    
    public init(_ begin : Int, _ end : Int) {
      self.begEnd = [begin, end]
    }
    
    public final override func getNumRegs() -> Int {
      return begEnd.count / 2
    }
    
    public override func clone() -> MultiRegion {
      let region : MultiRegion = MultiRegion(getNumRegs())
      //System.arraycopy(begEnd, 0, region.begEnd, 0, begEnd.count)
      region.begEnd = java.util.Arrays.copyOf(begEnd, begEnd.count)
      if (getCaptureTree() != nil) {
        _ = region.setCaptureTree(getCaptureTree()!.cloneTree())
      }
      return region;
    }
    
    public override func getBeg(_ index : Int) -> Int {
      return begEnd[index * 2];
    }
    
    public override func setBeg(_ index : Int, _ value : Int) -> Int {
      begEnd[index * 2] = value
      return begEnd[index * 2]
    }
    
    public override func getEnd(_ index : Int) -> Int {
      return begEnd[index * 2 + 1];
    }
    
    public override func setEnd(_ index : Int, _ value : Int) -> Int {
      begEnd[index * 2 + 1] = value
      return begEnd[index * 2 + 1]
    }
    
    override func clear() {
      java.util.Arrays.fill(&begEnd, 0, begEnd.count-1, org.joni.MultiRegion.REGION_NOTPOS);
    }
  }
}

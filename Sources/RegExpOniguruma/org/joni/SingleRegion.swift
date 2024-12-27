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
  
  public class SingleRegion : Region {
    var beg = 0
    var end = 0
    
    public init(_ num : Int) throws{
      if (num != 1) {
        throw java.lang.Throwable.IndexOutOufBoundsException(num)
      }
    }
    
    public init (_ begin : Int, _ end : Int) {
      self.beg = begin
      self.end = end
    }
    
    public override func getNumRegs() -> Int{
      return 1;
    }
    
    public override func clone() -> SingleRegion {
      let region : SingleRegion = SingleRegion(beg, end)
      if (getCaptureTree() != nil) {
        _ = region.setCaptureTree(getCaptureTree()!.cloneTree())
      }
      return region;
    }
    
    public override func getBeg(_ index : Int) throws -> Int {
      if (index != 0) {
        throw java.lang.Throwable.IndexOutOufBoundsException(index);
      }
      return beg;
    }
    
    public override func setBeg(_ index : Int, _ value : Int) throws -> Int {
      if (index != 0) {
        throw java.lang.Throwable.IndexOutOufBoundsException(index);
      }
      beg = value
      return beg
    }
    
    public override func getEnd(_ index : Int) throws -> Int {
      if (index != 0) {
        throw java.lang.Throwable.IndexOutOufBoundsException(index);
      }
      return end;
    }
    
    public override func setEnd(_ index : Int, _ value : Int) throws -> Int {
      guard index == 0 else {
        throw java.lang.Throwable.IndexOutOufBoundsException(index)
      }
      end = value
      return end
    }
    
    override func clear() {
      beg = org.joni.SingleRegion.REGION_NOTPOS
      end = org.joni.SingleRegion.REGION_NOTPOS
    }
  }
}

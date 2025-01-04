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

import Foundation

extension org.joni {
  
  public final class NameEntry {
    static let INIT_NAME_BACKREFS_ALLOC_NUM = 8
    
    public let name : [UInt8]
    public let nameP : Int
    public let nameEnd : Int
    
    var backNum = 0
    var backRef1 = 0
    var backRefs : [Int] = []
    
    public init(_ bytes : [UInt8], _ p : Int, _ end : Int) {
      name = bytes
      nameP = p
      nameEnd = end
    }
    
    public func getBackRefs() -> [Int]{
      switch (backNum) {
      case 0:
        return [Int]()
      case 1:
        return [backRef1]
      default:
        //System.arraycopy(backRefs, 0, result, 0, backNum);
        return Array(original: backRefs, count: backNum)
      }
    }
    
    private func alloc() {
      backRefs = [Int]()
      backRefs.reserveCapacity(org.joni.NameEntry.INIT_NAME_BACKREFS_ALLOC_NUM)
    }
    
    private func ensureSize() {
      if (backNum > backRefs.length) {
        //int[]tmp = new int[backRefs.length << 1];
        //System.arraycopy(backRefs, 0, tmp, 0, backRefs.length);
        let newSize = Array(original: backRefs, count: backRefs.length)
        //backRefs = tmp;
        backRefs = newSize
      }
    }
    
    public func addBackref(_ backRef : Int) {
      backNum += 1
      
      switch (backNum) {
      case 1:
        backRef1 = backRef;
        break;
      case 2:
        alloc();
        backRefs[0] = backRef1;
        backRefs[1] = backRef;
        break;
      default:
        ensureSize();
        backRefs[backNum - 1] = backRef;
      }
    }
    
    public func toString() -> String {
      var buff = "\(String (bytes: name, encoding: .utf8)!.substring(nameP, nameEnd - nameP)) "
      if (backNum == 0) {
        buff.append("-")
      }
      else {
        if (backNum == 1){
          buff.append("\(backRef1)")
        }
        else {
          for i in 0..<backNum {
            if (i > 0) {
              buff.append(", ")
            }
            buff.append("\(backRefs[i])")
          }
        }
      }
      return buff.toString();
    }
  }
}

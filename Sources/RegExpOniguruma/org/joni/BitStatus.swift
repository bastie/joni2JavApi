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
  
  final class BitStatus {
    public static let BIT_STATUS_BITS_NUM = 4 * 8;
    
    public static func bsClear() -> Int {
      return 0;
    }
    public static func bsAll() -> Int {
      return -1;
    }
    public static func bsAt(_ stats : Int, _ n : Int) -> Bool {
      return (n < BIT_STATUS_BITS_NUM ? stats & (1 << n) : (stats & 1)) != 0;
    }
    public static func bsOnAt(_ oldStats : Int, _ n : Int) -> Int {
      var stats = oldStats
      if (n < BIT_STATUS_BITS_NUM) {
        stats |= (1 << n);
      } else {
        stats |= 1;
      }
      return stats
    }
    public static func bsOnAtSimple(_ oldStats : Int, _ n : Int) -> Int {
      var stats = oldStats
      if (n < BIT_STATUS_BITS_NUM) {
        stats = stats | (1 << n)
      }
      return stats;
    }
    
    public static func bsOnOff(_ oldV : Int, _ f : Int, _ negative : Bool) -> Int {
      var v = oldV
      if (negative) {
        v &= ~f;
      } else {
        v |= f;
      }
      return v;
    }
  }
}

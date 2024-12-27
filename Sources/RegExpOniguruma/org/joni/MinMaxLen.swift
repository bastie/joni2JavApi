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
  
  final class MinMaxLen {
    var min : Int = 0 /* min byte length */
    var max : Int = 0 /* max byte length */
    
    /* 1000 / (min-max-dist + 1) */
    private static let distValues : [Int16] = [
      1000,  500,  333,  250,  200,  167,  143,  125,  111,  100,
      91,   83,   77,   71,   67,   63,   59,   56,   53,   50,
      48,   45,   43,   42,   40,   38,   37,   36,   34,   33,
      32,   31,   30,   29,   29,   28,   27,   26,   26,   25,
      24,   24,   23,   23,   22,   22,   21,   21,   20,   20,
      20,   19,   19,   19,   18,   18,   18,   17,   17,   17,
      16,   16,   16,   16,   15,   15,   15,   15,   14,   14,
      14,   14,   14,   14,   13,   13,   13,   13,   13,   13,
      12,   12,   12,   12,   12,   12,   11,   11,   11,   11,
      11,   11,   11,   11,   11,   10,   10,   10,   10,   10
    ]
    
    func distanceValue() -> Int {
      if (max == org.joni.MinMaxLen.INFINITE_DISTANCE) {return 0}
      let d = max - min;
      /* return dist_vals[d] * 16 / (mm->min + 12); */
      return Int(d < org.joni.MinMaxLen.distValues.count ? org.joni.MinMaxLen.distValues[d] : 1);
    }
    
    func compareDistanceValue(_ other : MinMaxLen, _ _v1 : Int, _ _v2 : Int) -> Int {
      var v1 = _v1
      var v2 = _v2
      
      if (v2 <= 0) {return -1}
      if (v1 <= 0) {return 1}
      
      v1 *= distanceValue();
      v2 *= other.distanceValue();
      
      if (v2 > v1) {return 1}
      if (v2 < v1) {return -1}
      
      return min > other.min ? 1 : (min < other.min ? -1 : 0) //Integer.compare(min, other.min);
    }
    
    func equal(_ other : MinMaxLen) -> Bool {
      return min == other.min && max == other.max;
    }
    
    func set(_ min : Int, _ max : Int) {
      self.min = min;
      self.max = max;
    }
    
    func clear() {
      min = 0
      max = 0
    }
    
    func copy(_ other : MinMaxLen) {
      min = other.min;
      max = other.max;
    }
    
    func add(_ other : MinMaxLen) {
      min = org.joni.MinMaxLen.distanceAdd(min, other.min);
      max = org.joni.MinMaxLen.distanceAdd(max, other.max);
    }
    
    func addLength(_ len : Int) {
      min = org.joni.MinMaxLen.distanceAdd(min, len);
      max = org.joni.MinMaxLen.distanceAdd(max, len);
    }
    
    func altMerge(_ other : MinMaxLen) {
      if (min > other.min) {
        min = other.min
      }
      if (max < other.max) {
        max = other.max
      }
    }
    
    static let INFINITE_DISTANCE = 0x7FFFFFFF;
    static func distanceAdd(_ d1 : Int, _ d2 : Int) -> Int{
      if (d1 == INFINITE_DISTANCE || d2 == INFINITE_DISTANCE) {
        return INFINITE_DISTANCE;
      } else {
        if (d1 <= INFINITE_DISTANCE - d2) {
          return d1 + d2;
        }
        else {
          return INFINITE_DISTANCE;
        }
      }
    }
    
    static func distanceMultiply(_ d : Int, _ m : Int) -> Int {
      if (m == 0) { return 0 }
      if (d < INFINITE_DISTANCE / m) {
        return d * m;
      } else {
        return INFINITE_DISTANCE;
      }
    }
    
    static func distanceRangeToString(_ a : Int, _ b : Int) -> String {
      var s = "";
      if (a == INFINITE_DISTANCE) {
        s += "inf";
      } else {
        s += "(\(a))";
      }
      
      s += "-";
      
      if (b == INFINITE_DISTANCE) {
        s += "inf";
      } else {
        s += "(\(b))";
      }
      return s;
    }
  }
}

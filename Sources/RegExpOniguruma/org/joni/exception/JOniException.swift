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

extension org.joni.exception {
  
  public enum JOinException : Error {
    case InternalException (_ message : String = "InternalException")
    case SyntaxException (_ message : String = "SyntaxException")
    case ValueException (_ message : String = "ValueException")
  }
  
  internal class JOniExceptionHelper {
    
    static func valueExceptionMessage (_ message : String, _ str : String) -> String {
      return message.replaceAll("%n", str)
    }
    
    static func valueExceptionMessage (_ message : String, _ bytes : [UInt8], _ p : Int, _ end : Int) -> String {
      let second = String(bytes: bytes, encoding: .utf8)?.substring(p, end)
      return valueExceptionMessage(message, "\(second ?? "???")")
    }
  }
}

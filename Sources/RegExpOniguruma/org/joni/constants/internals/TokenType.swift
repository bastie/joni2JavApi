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
extension org.joni.constants.internals {
  
  public enum TokenType {
    case none // Swift like initialized or optional values
    
    case EOT            /* end of token */
    case RAW_BYTE
    case CHAR
    case STRING
    case CODE_POINT
    case ANYCHAR
    case CHAR_TYPE
    case BACKREF
    case CALL
    case ANCHOR
    case OP_REPEAT
    case INTERVAL
    case ANYCHAR_ANYTIME  /* SQL '%' == .* */
    case ALT
    case SUBEXP_OPEN
    case SUBEXP_CLOSE
    case CC_OPEN
    case QUOTE_OPEN
    case CHAR_PROPERTY    /* \p{...}, \P{...} */
    case LINEBREAK
    case EXTENDED_GRAPHEME_CLUSTER
    case KEEP
    /* in cc */
    case CC_CLOSE
    case CC_RANGE
    case POSIX_BRACKET_OPEN
    case CC_AND             /* && */
    case CC_CC_OPEN          /* [ */
  }
}

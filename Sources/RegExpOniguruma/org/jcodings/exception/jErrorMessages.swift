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
extension org.jcodings.jexception {
  
  open class jErrorMessages {
    static let ERR_TYPE_BUG = "undefined type (bug)";
    
    static let ERR_TOO_BIG_WIDE_CHAR_VALUE = "too big wide-char value";
    static let ERR_TOO_LONG_WIDE_CHAR_VALUE = "too long wide-char value";
    
    static let ERR_INVALID_CHAR_PROPERTY_NAME = "invalid character property name <%n>";
    static let ERR_INVALID_CODE_POINT_VALUE = "invalid code point value";
    
    static let ERR_ENCODING_CLASS_DEF_NOT_FOUND = "encoding class <%n> not found";
    static let ERR_ENCODING_LOAD_ERROR = "problem loading encoding <%n>";
    
    static let ERR_ILLEGAL_CHARACTER = "illegal character";
    
    static let ERR_ENCODING_ALREADY_REGISTERED = "encoding already registerd <%n>";
    static let ERR_ENCODING_ALIAS_ALREADY_REGISTERED = "encoding alias already registerd <%n>";
    static let ERR_ENCODING_REPLICA_ALREADY_REGISTERED = "encoding replica already registerd <%n>";
    static let ERR_NO_SUCH_ENCODNG = "no such encoding <%n>";
    static let ERR_COULD_NOT_REPLICATE = "could not replicate <%n> encoding";
    
    // transcoder messages
    static let ERR_TRANSCODER_ALREADY_REGISTERED = "transcoder from <%n> has been already registered";
    static let ERR_TRANSCODER_CLASS_DEF_NOT_FOUND = "transcoder class <%n> not found";
    static let ERR_TRANSCODER_LOAD_ERROR = "problem loading transcoder <%n>";
  }
}

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
  
  open class NodeType {
    /* node type */
    static let STR        = 0;
    static let CCLASS     = 1;
    static let CTYPE      = 2;
    static let CANY       = 3;
    static let BREF       = 4;
    static let QTFR       = 5;
    static let ENCLOSE    = 6;
    static let ANCHOR     = 7;
    static let LIST       = 8;
    static let ALT        = 9;
    static let CALL       = 10;
    
    static let BIT_STR        = 1 << STR;
    static let BIT_CCLASS     = 1 << CCLASS;
    static let BIT_CTYPE      = 1 << CTYPE;
    static let BIT_CANY       = 1 << CANY;
    static let BIT_BREF       = 1 << BREF;
    static let BIT_QTFR       = 1 << QTFR;
    static let BIT_ENCLOSE    = 1 << ENCLOSE;
    static let BIT_ANCHOR     = 1 << ANCHOR;
    static let BIT_LIST       = 1 << LIST;
    static let BIT_ALT        = 1 << ALT;
    static let BIT_CALL       = 1 << CALL;
    
    /* allowed node types in look-behind */
    static let ALLOWED_IN_LB = ( BIT_LIST |
                                BIT_ALT |
                                BIT_STR |
                                BIT_CCLASS |
                                BIT_CTYPE |
                                BIT_CANY |
                                BIT_ANCHOR |
                                BIT_ENCLOSE |
                                BIT_QTFR |
                                BIT_CALL );
    
    static let SIMPLE =        ( BIT_STR |
                                BIT_CCLASS |
                                BIT_CTYPE |
                                BIT_CANY |
                                BIT_BREF);
    
  }
}

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
  
  public class AnchorType {
    static let BEGIN_BUF         = (1<<0);
    static let BEGIN_LINE        = (1<<1);
    static let BEGIN_POSITION    = (1<<2);
    static let END_BUF           = (1<<3);
    static let SEMI_END_BUF      = (1<<4);
    static let END_LINE          = (1<<5);
    
    static let WORD_BOUND        = (1<<6);
    static let NOT_WORD_BOUND    = (1<<7);
    static let WORD_BEGIN        = (1<<8);
    static let WORD_END          = (1<<9);
    static let PREC_READ         = (1<<10);
    static let PREC_READ_NOT     = (1<<11);
    static let LOOK_BEHIND       = (1<<12);
    static let LOOK_BEHIND_NOT   = (1<<13);
    
    static let ANYCHAR_STAR      = (1<<14);   /* ".*" optimize info */
    static let ANYCHAR_STAR_ML   = (1<<15);   /* ".*" optimize info (multi-line) */
    
    static let ANYCHAR_STAR_MASK = (ANYCHAR_STAR | ANYCHAR_STAR_ML);
    static let END_BUF_MASK      = (END_BUF | SEMI_END_BUF);
    
    static let KEEP              = (1<<16);
    
    static let ALLOWED_IN_LB =     ( LOOK_BEHIND |
                                     LOOK_BEHIND_NOT |
                                     BEGIN_LINE |
                                     END_LINE |
                                     BEGIN_BUF |
                                     BEGIN_POSITION |
                                     KEEP |
                                     WORD_BOUND |
                                     NOT_WORD_BOUND |
                                     WORD_BEGIN |
                                     WORD_END );
    
    
    static let ALLOWED_IN_LB_NOT = ( LOOK_BEHIND |
                                     LOOK_BEHIND_NOT |
                                     BEGIN_LINE |
                                     END_LINE |
                                     BEGIN_BUF |
                                     BEGIN_POSITION |
                                     KEEP |
                                     WORD_BOUND |
                                     NOT_WORD_BOUND |
                                     WORD_BEGIN |
                                     WORD_END );
  }
}

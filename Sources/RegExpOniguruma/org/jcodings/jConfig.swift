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
extension org.jcodings {
  
  open class jConfig {
    /* work size */
    static let ENC_CODE_TO_MBC_MAXLEN            = 7;
    static let ENC_MBC_CASE_FOLD_MAXLEN          = 18;
    
    static let ENC_MAX_COMP_CASE_FOLD_CODE_LEN   = 3;
    static let ENC_GET_CASE_FOLD_CODES_MAX_NUM   = 13;       /* 13 => Unicode:0x1ffc */
    
    static let USE_UNICODE_CASE_FOLD_TURKISH_AZERI = false;
    static let USE_UNICODE_ALL_LINE_TERMINATORS = false;
    static let USE_CRNL_AS_LINE_TERMINATOR = false;
    
    static let USE_UNICODE_PROPERTIES = true;
    
    static let CodePointMaskWidth =                  3;
    static let CodePointMask =                       (1 << CodePointMaskWidth) - 1;
    
    static let SpecialIndexShift =                   3;
    static let SpecialIndexWidth =                   10;
    static let SpecialIndexMask =                    ((1 << SpecialIndexWidth) - 1) << SpecialIndexShift;
    
    static let SpecialsLengthOffset =                25;
    
    static let CASE_UPCASE =                         (1<<13); /* has/needs uppercase mapping */
    static let CASE_DOWNCASE =                       (1<<14); /* has/needs lowercase mapping */
    static let CASE_TITLECASE =                      (1<<15); /* has/needs (special) titlecase mapping */
    static let CASE_SPECIAL_OFFSET =                 3;       /* offset in bits from ONIGENC_CASE to ONIGENC_CASE_SPECIAL */
    static let CASE_UP_SPECIAL =                     (1<<16); /* has special upcase mapping */
    static let CASE_DOWN_SPECIAL =                   (1<<17); /* has special downcase mapping */
    static let CASE_MODIFIED =                       (1<<18); /* data has been modified */
    static let CASE_FOLD =                           (1<<19); /* has/needs case folding */
    
    static let CASE_FOLD_TURKISH_AZERI =             (1<<20); /* needs mapping specific to Turkic languages; better not change original value! */
    
    static let CASE_FOLD_LITHUANIAN =                (1<<21); /* needs Lithuanian-specific mapping */
    static let CASE_ASCII_ONLY =                     (1<<22); /* only modify ASCII range */
    static let CASE_IS_TITLECASE =                   (1<<23); /* character itself is already titlecase */
    static let CASE_SPECIALS =                       (CASE_TITLECASE | CASE_IS_TITLECASE | CASE_UP_SPECIAL | CASE_DOWN_SPECIAL);
    
    static let INTERNAL_ENC_CASE_FOLD_MULTI_CHAR =   (1<<30); /* better not change original value! */
    static let ENC_CASE_FOLD_MIN = INTERNAL_ENC_CASE_FOLD_MULTI_CHAR;
    static let ENC_CASE_FOLD_DEFAULT = ENC_CASE_FOLD_MIN;
    
    static let UNICODE_VERSION_STRING = "13.0.0";
    static let UNICODE_VERSION_MAJOR = 13;
    static let UNICODE_VERSION_MINOR = 0;
    static let UNICODE_VERSION_TEENY = 0;
    static let UNICODE_EMOJI_VERSION_STRING = "13.1";
    static let UNICODE_EMOJI_VERSION_MAJOR = 13;
    static let UNICODE_EMOJI_VERSION_MINOR = 1;
    
  }
}

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
  
  public final class Option {
    /* options */
    public static let NONE                 = 0;
    public static let IGNORECASE           = (1 << 0);
    public static let EXTEND               = (1 << 1);
    public static let MULTILINE            = (1 << 2);
    public static let SINGLELINE           = (1 << 3);
    public static let FIND_LONGEST         = (1 << 4);
    public static let FIND_NOT_EMPTY       = (1 << 5);
    public static let NEGATE_SINGLELINE    = (1 << 6);
    public static let DONT_CAPTURE_GROUP   = (1 << 7);
    public static let CAPTURE_GROUP        = (1 << 8);
    
    /* options (search time) */
    public static let NOTBOL               = (1 << 9);
    public static let NOTEOL               = (1 << 10);
    public static let POSIX_REGION         = (1 << 11);
    
    /* options (ctype range) */
    public static let ASCII_RANGE          = (1 << 12);
    public static let POSIX_BRACKET_ALL_RANGE = (1 << 13);
    public static let WORD_BOUND_ALL_RANGE = (1 << 14);
    /* options (newline) */
    public static let NEWLINE_CRLF         = (1 << 15);
    public static let NOTBOS               = (1 << 16);
    public static let NOTEOS               = (1 << 17);
    public static let CR_7_BIT             = (1 << 18);
    
    public static let MAXBIT               = (1 << 19); /* limit */
    
    public static let DEFAULT              = NONE;
    
    public static func toString(_ option : Int) -> String {
      var options = ""
      if (isIgnoreCase(option)) {options += "IGNORECASE"}
      if (isExtend(option)) {options += "EXTEND"}
      if (isMultiline(option)) {options += "MULTILINE"}
      if (isSingleline(option)) {options += "SINGLELINE"}
      if (isFindLongest(option)) {options += "FIND_LONGEST"}
      if (isFindNotEmpty(option)) {options += "FIND_NOT_EMPTY"}
      if (isNegateSingleline(option)) {options += "NEGATE_SINGLELINE"}
      if (isDontCaptureGroup(option)) {options += "DONT_CAPTURE_GROUP"}
      if (isCaptureGroup(option)) {options += "CAPTURE_GROUP"}
      if (isNotBol(option)) {options += "NOTBOL"}
      if (isNotEol(option)) {options += "NOTEOL"}
      if (isPosixRegion(option)) {options += "POSIX_REGION"}
      if (isCR7Bit(option)) {options += "CR_7_BIT"}
      return options
    }
    
    public static func isIgnoreCase(_ option : Int) -> Bool {
      return (option & IGNORECASE) != 0;
    }
    
    public static func isExtend(_ option : Int) -> Bool {
      return (option & EXTEND) != 0;
    }
    
    public static func isSingleline(_ option : Int) -> Bool {
      return (option & SINGLELINE) != 0;
    }
    
    public static func isMultiline(_ option : Int) -> Bool {
      return (option & MULTILINE) != 0;
    }
    
    public static func isFindLongest(_ option : Int) -> Bool {
      return (option & FIND_LONGEST) != 0;
    }
    
    public static func isFindNotEmpty(_ option : Int) -> Bool {
      return (option & FIND_NOT_EMPTY) != 0;
    }
    
    public static func isFindCondition(_ option : Int) -> Bool {
      return (option & (FIND_LONGEST | FIND_NOT_EMPTY)) != 0;
    }
    
    public static func isNegateSingleline(_ option : Int) -> Bool {
      return (option & NEGATE_SINGLELINE) != 0;
    }
    
    public static func isDontCaptureGroup(_ option : Int) -> Bool {
      return (option & DONT_CAPTURE_GROUP) != 0;
    }
    
    public static func isCaptureGroup(_ option : Int) -> Bool {
      return (option & CAPTURE_GROUP) != 0;
    }
    
    public static func isNotBol(_ option : Int) -> Bool {
      return (option & NOTBOL) != 0;
    }
    
    public static func isNotEol(_ option : Int) -> Bool {
      return (option & NOTEOL) != 0;
    }
    
    public static func isPosixRegion(_ option : Int) -> Bool {
      return (option & POSIX_REGION) != 0;
    }
    
    public static func isAsciiRange(_ option : Int) -> Bool {
      return (option & ASCII_RANGE) != 0;
    }
    
    public static func isPosixBracketAllRange(_ option : Int) -> Bool {
      return (option & POSIX_BRACKET_ALL_RANGE) != 0;
    }
    
    public static func isWordBoundAllRange(_ option : Int) -> Bool {
      return (option & WORD_BOUND_ALL_RANGE) != 0;
    }
    
    public static func isNewlineCRLF(_ option : Int) -> Bool {
      return (option & NEWLINE_CRLF) != 0;
    }
    
    public static func isCR7Bit(_ option : Int) -> Bool {
      return (option & CR_7_BIT) != 0;
    }
    
    public static func isDynamic(_ option : Int) -> Bool {
      // ignore-case and multibyte status are included in compiled code
      // return (option & (MULTILINE | IGNORECASE)) != 0;
      return false;
    }
  }
}
